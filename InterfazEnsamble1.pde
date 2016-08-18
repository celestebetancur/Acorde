import controlP5.*;
import oscP5.*;
import netP5.*;

ControlP5 cp5;
OscP5 oscP5;
Button test;

Slider abc;
NetAddress myRemoteLocation;

OscMessage msg = new OscMessage("");

int vol = 127;
int perc1 = 1;
int perc2 = 1;
int separate = 100;
String ip = "10.4.3.248"; // ip adress, not known yet

void setup() {
  fullScreen();
  //orientation(LANDSCAPE);
  
  cp5 = new ControlP5(this);
  oscP5 = new OscP5(this,12000); // osc server port
  
  myRemoteLocation = new NetAddress(ip,12000); 
  
  cp5.addButton("perc1")
     .setValue(1)
     .setPosition(340,90)
     .setSize(200,20)
     ;

  cp5.addButton("perc2")
     .setValue(1)
     .setPosition(340,120)
     .setSize(200,20)
     ;
  cp5.addSlider("vol")
     .setValue(127)
     .setPosition(30,30)
     .setSize(35,300)
     .setRange(0,127)
     ;
     
  // Piano
  
  cp5.addButton("c")
     .setValue(0)
     .setPosition(30+separate,200)
     .setSize(30,240)
     ;

  cp5.addButton("d")
     .setValue(2)
     .setPosition(80+separate,200)
     .setSize(30,240)
     ;
     
     cp5.addButton("e")
     .setValue(4)
     .setPosition(130+separate,200)
     .setSize(30,240)
     ;

  cp5.addButton("f")
     .setValue(5)
     .setPosition(180+separate,200)
     .setSize(30,240)
     ;
     
     cp5.addButton("fs")
     .setValue(6)
     .setPosition(230+separate,200)
     .setSize(30,240)
     ;

  cp5.addButton("g")
     .setValue(7)
     .setPosition(280+separate,200)
     .setSize(30,240)
     ;
     
  cp5.addButton("a")
     .setValue(9)
     .setPosition(330+separate,200)
     .setSize(30,240)
     ;
     
  cp5.addButton("bb")
     .setValue(10)
     .setPosition(380+separate,200)
     .setSize(30,240)
     ;
     
  cp5.addButton("b")
     .setValue(11)
     .setPosition(430+separate,200)
     .setSize(30,240)
     ;
}

void draw(){
  background(0);
}

void perc1(){
  msg = new OscMessage("/ess/perc1");
  msg.add(perc1);
  oscP5.send(msg, myRemoteLocation);
}
void perc2(){
  msg = new OscMessage("/ess/perc2");
  msg.add(perc2);
  oscP5.send(msg, myRemoteLocation);
}
void vol() {
  vol = int(cp5.getValue("vol"));
  msg = new OscMessage("/ess/slider");
  msg.add(vol);
  oscP5.send(msg, myRemoteLocation);
}
void c() {
  msg = new OscMessage("/ess/marimba");
  msg.add(0);
  oscP5.send(msg, myRemoteLocation);
}
void d() {
  msg = new OscMessage("/ess/marimba");
  msg.add(2);
  oscP5.send(msg, myRemoteLocation);
}
void e() {
  msg = new OscMessage("/ess/marimba");
  msg.add(4);
  oscP5.send(msg, myRemoteLocation);
}
void f() {
  msg = new OscMessage("/ess/marimba");
  msg.add(5);
  oscP5.send(msg, myRemoteLocation);
}
void fs() {
  msg = new OscMessage("/ess/marimba");
  msg.add(6);
  oscP5.send(msg, myRemoteLocation);
}
void g() {
  msg = new OscMessage("/ess/marimba");
  msg.add(7);
  oscP5.send(msg, myRemoteLocation);
}
void a() {
  msg = new OscMessage("/ess/marimba");
  msg.add(9);
  oscP5.send(msg, myRemoteLocation);
}
void bb() {
  msg = new OscMessage("/ess/marimba");
  msg.add(10);
  oscP5.send(msg, myRemoteLocation);
}
void b() {
  msg = new OscMessage("/ess/marimba");
  msg.add(11);
  oscP5.send(msg, myRemoteLocation);
}
