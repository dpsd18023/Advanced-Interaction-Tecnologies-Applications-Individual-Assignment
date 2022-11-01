//QR Code

//Δήλωση μεταβλητης τύπου PImage (Το PImage είναι μια κλάση διαθέσιμη από την Processing core library).
PImage img; 
//Εισαγωγή βιβλιοθήκης για το QR.
import qrcodeprocessing.*;
//Decoder αντικείμενο απο την prdecoder library.
Decoder decoder;

void setup() {
  size(600, 600);
  //Φόρτωση εικόνας "MyQR.png".
  img = loadImage("MyQR.png");
  //Δημιουργία decoder αντικειμένου
  decoder = new Decoder(this);
  decoder.decodeImage(img);
}

void decoderEvent(Decoder decoder) {
  String statusMsg = decoder.getDecodedString(); 
  println(statusMsg);
  link(statusMsg);
 
} 


void draw() {
  background(0);
  image(img, 0, 0, width, height);
}
