import processing.video.*;
Movie myMovie;

void setup() {
  size(1280, 720);
  frameRate(30);
  myMovie = new Movie(this, "Video.mp4");
  myMovie.loop();
}

void draw() {
  float i = map(mouseX,0,width,0,5);
  myMovie.speed(i);
  if (myMovie.available()) {
    myMovie.read();
  }
  image(myMovie, 0, 0);
}
