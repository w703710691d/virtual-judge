package judge.remote.provider.hysbz;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import judge.httpclient.*;
import judge.remote.RemoteOjInfo;
import judge.remote.account.RemoteAccount;
import judge.remote.account.config.RemoteAccountConfig;
import judge.remote.submitter.CanonicalSubmitter;
import judge.remote.submitter.SubmissionInfo;

import judge.tool.HtmlHandleUtil;
import org.apache.commons.lang3.Validate;
import org.apache.http.HttpEntity;
import org.springframework.stereotype.Component;

@Component
public class HYSBZSubmitter extends CanonicalSubmitter {

    @Override
    public RemoteOjInfo getOjInfo() {
        return HYSBZInfo.INFO;
    }

    @Override
    protected boolean needLogin() {
        return true;
    }

    @Override
    protected Integer getMaxRunId(SubmissionInfo info, DedicatedHttpClient client, boolean submitted) {
        String html = client.get("/JudgeOnline/status.php?user_id=" + info.remoteAccountId + "&problem_id=" + info.remoteProblemId).getBody();
        Matcher matcher = Pattern.compile("class='evenrow'><td>(\\d+)").matcher(html);
        return matcher.find() ? Integer.parseInt(matcher.group(1)) : -1;
    }

    @Override
    protected String submitCode(SubmissionInfo info, RemoteAccount remoteAccount, DedicatedHttpClient client) {
        for(RemoteAccountConfig acc : HYSBZCrawler.acount.accounts)
        {
            client.get("/JudgeOnline/logout.php", HttpStatusValidator.SC_OK);

            HttpEntity entity = SimpleNameValueEntityFactory.create( //
                    "user_id", acc.id, //
                    "password", acc.password);
            client.post("/JudgeOnline/login.php", entity, new SimpleHttpResponseValidator() {
                @Override
                public void validate(SimpleHttpResponse response) throws Exception {
                    Validate.isTrue(response.getBody().contains("history.go(-2)"));
                }
            });
            entity = SimpleNameValueEntityFactory.create(
                    "language", info.remotelanguage, //
                    "id", info.remoteProblemId, //
                    "source", info.sourceCode //
            );
            try {
                client.post("/JudgeOnline/submit.php", entity, HttpStatusValidator.SC_MOVED_TEMPORARILY);
            }
            catch (Exception ex)
            {
                continue;
            }
            break;
        }
        return null;
    }

}
