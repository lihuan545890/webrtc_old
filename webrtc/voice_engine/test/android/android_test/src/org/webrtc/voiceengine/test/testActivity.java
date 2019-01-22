package org.webrtc.voiceengine.test;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class testActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.test);
		Button startbtn = (Button)findViewById(R.id.startbtn);
		startbtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

            	Intent intent = new Intent();
            	intent.setClass(testActivity.this, AndroidTest.class);
            	startActivity(intent);
                            }
        });
	}


    /*
     * this is used to load the 'webrtc-voice-demo-jni'
     * library on application startup.
     * The library has already been unpacked into
     * /data/data/webrtc.android.AndroidTest/lib/libwebrtc-voice-demo-jni.so
     * at installation time by the package manager.
     */
    static {
        //Log.d("*Webrtc*", "Loading webrtc-voice-demo-jni...");
        System.loadLibrary("webrtc-voice-demo-jni");
  }


}
