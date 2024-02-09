//Definerer farverne
int red = color(255, 0, 0);
int yellow = color(255, 255, 0);
int green = color(0, 255, 0);
int off = color(10);
int colorTop;
int colorMid;
int colorBottom;

//Laver vinduet vi tegner i
void setup() {
  size (400, 400);
  background(255);
  rectMode(CENTER);

  //Laver vores traffiklys boks
  stroke(0);
  rect(width/2, height/2, 80, 200);
}

//Tegner alt på lærrede
void draw() {



int timer = frameCount%500;
  switch(timer) {
  case 1: //Case tallet 1 fortæller os vi starter i frame 1
    colorTop = red;
    colorMid = off;
    colorBottom = off;
    break;
  case 200: //Næste step kommer først i frame 200, hvorfor der står case 200
    colorTop = red;
    colorMid = yellow;
    colorBottom = off;
    break;
  case 300: // Frame 300
    colorTop = off;
    colorMid = off;
    colorBottom = green;
    break;
    case 400: //Frame 400
    colorTop = off;
    colorMid = yellow;
    colorBottom = off;
  }



  //Laver vores cirkler til lys
  fill(colorTop);
  ellipse(width/2, height/3, 60, 60);
  fill(colorMid);
  ellipse(width/2, height/2, 60, 60);
  fill(colorBottom);
  ellipse(width/2, 2*height/3, 60, 60);
}
