package com.example.test;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.os.IBinder;
import android.os.Message;

import androidx.core.app.NotificationCompat;

import java.net.Inet4Address;

public class Serena extends Service {
    MediaPlayer ser;
    MediaPlayer av;
    private String CHANNEL_ID="CHANNEL_ID";
    public Serena() {
    }
    public void playStartSer()  {
        if(ser==null){
            ser=MediaPlayer.create(this,R.raw.voz);
        }
        ser.start();
    }
    public void playStopSer()  {
        if(av==null){
            av=MediaPlayer.create(this,R.raw.av);
        }
        av.start();
    }
    NotificationManager man;

    void SendNef(){


//        Intent notificationIntent = new Intent(this, MainActivity.class);
//        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0,notificationIntent, PendingIntent.FLAG_UPDATE_CURRENT);
//        Notification.Builder notificationBuilder = new Notification.Builder(this);
//        notificationBuilder.setSmallIcon(R.drawable.ic_launcher_background);
//        notificationBuilder.setContentIntent(pendingIntent);
// Далее тут ещё нужно настроить вид уведомления (ну там текст, картинки и т.п.)

// Теперь показываем пользователю уведомление привязанное к сервису:
//        startForeground(1, notificationBuilder.build());
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "My channel",
                    NotificationManager.IMPORTANCE_HIGH);
            channel.setDescription("My channel description");
            channel.enableLights(true);
            channel.setLightColor(Color.RED);
            channel.enableVibration(false);
            man.createNotificationChannel(channel);
        }
        Intent notificationIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent =
                PendingIntent.getActivity(this, 0, notificationIntent, 0);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, CHANNEL_ID)
                .setSmallIcon(R.drawable.grom)
                .setContentTitle("СЕРЕНА")
                .setContentText("ПОРА ВАЛИТЬ")
                .setAutoCancel(true)
                .setPriority(NotificationCompat.PRIORITY_DEFAULT);

        startForeground(1,builder.build());

    }
    public class MyThread extends Thread {

        public void StartSerena(){

            playStartSer();
        }

        public void StopSerena(){

            playStopSer();
        }
        public void run() {

            startGetPacket();
        }
        public native void startGetPacket();
    }



    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }
    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        SendNef();
        playStopSer();
        //return Service.START_STICKY;
        return super.onStartCommand(intent, flags, startId);
    }
    @Override
    public void onCreate(){
        man =
                (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        MyThread my=new MyThread();
        my.start();
    }
    @Override
    public void onDestroy() {
        playStopSer();
    }
}