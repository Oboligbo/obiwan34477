PImage img;
PFont font;
void setup() {
  img = loadImage("colorbricks.jpg");
  size(img.width,img.height);
  image(img, 0, 0);
  font = loadFont("lego.vlw");
  textFont(font, 100);
  textAlign(CENTER);
  text("BRICKHEAD", width/2, height-300);
}

void draw() {
}
void keyPressed() {
  if(key == 'p') {
    saveFrame("data" + System.currentTimeMillis() + "jpg");
  }
}

