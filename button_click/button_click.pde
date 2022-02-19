// Code example for Processing 2.0b9 + Core Minim + ControlP5 2.0.4
 
import controlP5.*;
ControlP5 cp5;
 
import ddf.minim.*;
Minim minim;
AudioPlayer playerA;
 
void setup() {
  size(400, 400);
  minim = new Minim(this);
  playerA = minim.loadFile("click.mp3");
  cp5 = new ControlP5(this);
  cp5.addBang("zero").setPosition(100,100).setSize(200,200);
}
 
void draw() {
  background(0);
}
 
public void controlEvent(ControlEvent theEvent) {
  String name = theEvent.getController().getName();
  if (name.equals("zero")) {
    playerA.play();
    playerA.rewind();
    //if (playerA.isPlaying()) {
    //  playerA.pause();
    //} else {
    //  // playerA.rewind(); // optional to start from the beginning
    //  playerA.play();
    //}
  }
}
