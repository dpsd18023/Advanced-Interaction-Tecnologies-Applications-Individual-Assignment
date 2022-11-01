//Video Capture

import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480, "pipeline:autovideosrc");
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  image(video, 0, 0);
}
