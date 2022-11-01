// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-1: "Hello World" images

// Declaring a variable of type PImage
// PImage is a class available from the Processing core library.
PImage img; 
import qrcodeprocessing.*;
Decoder decoder;

void setup() {
  size(600, 600);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("MyQR.png");
  decoder = new Decoder(this);
  PImage img = loadImage("MyQR.png");
  decoder.decodeImage(img); 

}

void decoderEvent(Decoder decoder) {
  String statusMsg = decoder.getDecodedString(); 
  println(statusMsg);
  link(statusMsg);
 
} 

/*
void mousePressed() { 
    link(statusMsg);
  }

*/

void draw() {
  background(0);
  // The image() function displays the image at a location
  // in this case the point (0,0).
  image(img, 0, 0, width, height);
}
