import ddf.minim.*;
import processing.serial.*;
import processing.sound.*;


bird b = new bird();
boolean end = false;
boolean intro=true;
boolean click=false;
float angle=0;
float arrowPos;
float y=0;


Minim minim;
AudioPlayer song0; 
AudioPlayer song40; 
AudioPlayer song41;
AudioPlayer song42;
AudioPlayer song43;
AudioPlayer song44;
AudioPlayer song45;
AudioPlayer song46;
AudioPlayer song47;
AudioPlayer song48;
AudioPlayer song49;

Serial myPort;
String val;
int frame = 0;
int availablePort = 0;


int r = 0;
int m = 1;
void setup()
{
  background(255);
 
  minim = new Minim(this); 
  song0 = minim.loadFile("0.wav");
  song40 = minim.loadFile("40.wav");
  song41 = minim.loadFile("42.wav");
  song42 = minim.loadFile("44.wav");
  song43 = minim.loadFile("45.wav");
  song44 = minim.loadFile("47.wav");
  song45 = minim.loadFile("49.wav");
  song46 = minim.loadFile("51.wav");
  song47 = minim.loadFile("52.wav");
  song48 = minim.loadFile("54.wav");
  song49 = minim.loadFile("56.wav");




  String portName = Serial.list()[6];
  myPort = new Serial(this, portName, 115200);

  size(800, 800);
}


void draw()
{
  fill(0);
  textSize(50);
  if (end==false) {

    if (intro) {
      //background
      //a
      fill(255, 75, 113);
      noStroke();
      rect(0, 0, 80, 800);
      //b
      fill(255, 98, 73);
      noStroke();
      rect(80, 0, 80, 800);
      //c
      fill(255, 181, 4);
      noStroke();
      rect(160, 0, 160, 800);
      //d
      fill(255, 135, 101);
      noStroke();
      rect(240, 0, 240, 800);
      //e
      fill(248, 223, 136);
      noStroke();
      rect(320, 0, 320, 800);
      //f
      fill(129, 142, 164);
      noStroke();
      rect(400, 0, 400, 800);
      //g
      fill(246, 243, 233);
      noStroke();
      rect(480, 0, 480, 800);
      //h
      fill(123, 131, 53);
      noStroke();
      rect(560, 0, 560, 800);
      //i
      fill(210, 205, 192);
      noStroke();
      rect(640, 0, 640, 800);
      //j
      fill(255, 116, 38);
      noStroke();
      rect(720, 0, 720, 800);

      song0.play(); 

      fill(0, 150);
      textSize(50);
      textAlign(CENTER);
      text("Paper Piano", 420, 200);

      text("Try to touch the key!", 407, 381);
    }
  }

  if ( myPort.available() > 0 )
  {
    reset();
    intro=false;
    val = myPort.readStringUntil('\n');
    if (val != null)
    {
      intro=false;
      availablePort = 1;
      if (val.charAt(0) == 'a')
      {
        frame = 1;
        song40.rewind();
        song40.play();
      }
      if (val.charAt(0) == 'b')
      {
        frame = 2;
        song41.rewind();
        song41.play();
      }
      if (val.charAt(0) == 'c')
      {
        frame = 3;
        song42.rewind();
        song42.play();
      }
      if (val.charAt(0) == 'd')
      {
        frame = 4;
        song43.rewind();
        song43.play();
      }
      if (val.charAt(0) == 'e')
      {
        frame = 5;
        song44.rewind();
        song44.play();
      }
      if (val.charAt(0) == 'f')
      {
        frame = 6;
        song45.rewind();
        song45.play();
      }
      if (val.charAt(0) == 'g')
      {
        frame = 7;
        song46.rewind();
        song46.play();
      }
      if (val.charAt(0) == 'h')
      {
        frame = 8;
        song47.rewind();
        song47.play();
      }
      if (val.charAt(0) == 'i')
      {
        frame = 9;
        song48.rewind();
        song48.play();
      }

      if (val.charAt(0) == 'j')
      {
        frame = 10;
        song49.rewind();
        song49.play();
      }
    }
  }
  if (availablePort == 1)
  {

    if (frame == 1)
    {
      fill(255, 75, 113);
      rect(0, 0, 800, 800);
      fill(255);
      rect(400, 400, 600, 600);
      b.move();
      fill(255, 75, 113);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("DO", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 2)
    {
      fill(255);
      rect(400, 400, 600, 600);
      fill(255, 98, 73);
      rect(0, 0, 800, 800);

      b.move();
      fill(255, 98, 73);
      rect(0, 0, 800, 800);
      noStroke();

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("RE", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 3)
    {
      fill(255, 181, 4);
      rect(0, 0, 800, 800);
      b.move();
      fill(255, 181, 4);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("MI", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 4)
    {
      fill(255, 135, 101);
      rect(0, 0, 800, 800);
      b.move();
      fill(255, 135, 101);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("FA", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 5)
    {
      fill(248, 223, 136);
      rect(0, 0, 800, 800);
      b.move();
      fill(248, 223, 136);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("SO", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 6)
    {
      fill(129, 142, 164);
      rect(0, 0, 800, 800);
      b.move();
      fill(129, 142, 164);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("LA", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 7)
    {
      fill(0, 228, 189);
      rect(0, 0, 800, 800);
      b.move();
      fill(0, 228, 189);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("XI", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 8)
    {
      fill(123, 131, 53);
      rect(0, 0, 800, 800);
      b.move();
      fill(123, 131, 53);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("DO", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    if (frame == 9)
    {
      fill(210, 205, 192);
      rect(0, 0, 800, 800);
      b.move();
      fill(210, 205, 192);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("RE", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }

    if (frame == 10)
    {
      fill(255, 116, 38);
      rect(0, 0, 800, 800);
      b.move();
      fill(255, 116, 38);
      rect(0, 0, 800, 800);

      fill(255);
      rect(350, 410, 100, 20);
      noStroke();
      fill(255);
      rect(350, 600, 100, 20);
      noStroke();

      fill(255);
      textAlign(CENTER);
      textSize(50);
      text("MI", 400, 400);
      textSize(20);
      text("Good job! Keep going and don't let the ball hit the ground.", 400, 200);
    }
    b.drawBird();
  }
}

class bird
{
  float xPos, yPos, ySpeed;
  bird()
  {
    ySpeed = 1.2;
    xPos = 400;
    yPos = 440;
  }
  void drawBird()
  {
    stroke(255);
    fill(255);
    strokeWeight(2);
    ellipse(xPos, yPos, 20, 20);
    if (yPos>=590) {
      textSize(30);
      fill(255);
      textAlign(CENTER);
      text("Ooooooops:)", 400, 525);
      yPos=590;
    } else {
      yPos += ySpeed;
    }
  }
  void jump()
  {
    ySpeed -= 10;
  }
  void drag()
  {
    ySpeed += 10;
    yPos = 440;
  }
  void move()
  {
    yPos += ySpeed;
  }
}
void reset()
{
  end=true;
  b.yPos = 440;
}

void mousePressed() {
  intro=true;
}

public void stop() {
  minim.stop();
}
