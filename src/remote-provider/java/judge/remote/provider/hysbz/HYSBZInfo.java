package judge.remote.provider.hysbz;

import judge.remote.RemoteOj;
import judge.remote.RemoteOjInfo;

import org.apache.http.HttpHost;

public class HYSBZInfo {

    public static final RemoteOjInfo INFO = new RemoteOjInfo( //
            RemoteOj.HYSBZ, //
            "HYSBZ", //
            HttpHost.create("https://www.lydsy.com") //
    );
    
    static {
        INFO.faviconUrl = "images/remote_oj/HYSBZ_icon.png";
        INFO._64IntIoFormat = "%lld & %llu";
        INFO.urlForIndexDisplay = "http://www.lydsy.com/JudgeOnline/";
    }
}
