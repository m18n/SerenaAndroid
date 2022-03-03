package com.example.test;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Build;
import android.os.Bundle;
import android.widget.TextView;
import android.os.Handler;
import android.os.Message;
import com.example.test.databinding.ActivityMainBinding;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.OneoffTask;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'test' library on application startup.
    static {
        System.loadLibrary("test");
    }

    private ActivityMainBinding binding;
    TextView tv;
    private Handler handler;



    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        tv = binding.sampleText;
        tv.setText(stringFromJNI());
//        MyThread my=new MyThread();
//        my.start();
        handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                String text = (String) msg.obj;
                tv.setText( text );
            }
        };


        Thread t = new Thread(){
            public void run(){
                
                Context context = getApplicationContext();
                Intent i=new Intent(context, Serena.class);

                context.startForegroundService(i);

            }
        };
        t.start();
     }

    /**
     * A native method that is implemented by the 'test' native library,
     * which is packaged with this application.
     */

    public native String stringFromJNI();
//    public void playStartSer()  {
//        if(ser==null){
//            ser=MediaPlayer.create(this,R.raw.voz);
//        }
//        ser.start();
//    }
//    public void playStopSer()  {
//        if(av==null){
//            av=MediaPlayer.create(this,R.raw.av);
//        }
//        av.start();
//    }
//    public class MyThread extends Thread {
//        public void StartSerena(){
//            Message msg = new Message();
//            msg.obj = "SERENA Start";
//            handler.sendMessage(msg);
//            playStartSer();
//        }
//
//        public void StopSerena(){
//            Message msg = new Message();
//            msg.obj = "SERENA Stop";
//            handler.sendMessage(msg);
//            playStopSer();
//        }
//        public void run() {
//            startGetPacket();
//        }
//        public native void startGetPacket();
//    }

}