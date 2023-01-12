import TUIO.*;
TuioProcessing tuioClient;


float scale_factor = 1;
PFont font;
PImage bg;
PImage img;
//PImage img2;

int imagewidth, imageheight; 
boolean loadImage= false ;
float zoom = 100;
float R =255;
float G =255;
float B =255;

boolean verbose = true; 
boolean callback = true; 

void setup()
{

  size(1000, 667);
  bg = loadImage("spaceBG.jpg"); 
  img = loadImage("earth.png"); 
 // img2 = loadImage("moon.png"); 



  if (!callback) {
    frameRate(60);
    loop();
  } else noLoop(); // or callback updates 

  font = createFont("Arial", 18);
  tuioClient  = new TuioProcessing(this);
  imagewidth = img.width;
  imageheight = img.height;
}


void draw()
{
  background(bg);
  textFont(font, 18*scale_factor);


  ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
  for (int i=0; i<tuioObjectList.size(); i++) {
    TuioObject tobj = tuioObjectList.get(i);


//---------- IMAGE ---------------
    if (tobj.getSymbolID()==0)
    {
      translate(tobj.getScreenX(width), tobj.getScreenY(height));
      //rotate(tobj.getAngle());
      image(img, -imagewidth/2, -imageheight/2, imagewidth, imageheight);
    }


    if (loadImage)
    {
      
//----------- ZOOM ---------------
       if (tobj.getSymbolID()==1)
      {
        
        zoom =constrain(zoom +tobj.getRotationSpeed()*6, 10, 300 );
        imagewidth = int(img.width* zoom/100); 
        imageheight = int(img.height*zoom/100);
      }
      
//----------- ROTATION ---------------
      if (tobj.getSymbolID()==2)
      {
       //translate(tobj.getScreenX(width), tobj.getScreenY(height));
        rotate(tobj.getAngle());
        //image(img, -imagewidth/2, -imageheight/2, imagewidth, imageheight);
      }

//----------- RGB COLOR ---------------

      if (tobj.getSymbolID()==3)
      {
        
        R =map(tobj.getAngle(), 0, 6.2, 255, 0 );
        tint(R, G, B);
      }
      
      if (tobj.getSymbolID()==4)
      {
        
        G =map(tobj.getAngle(), 0, 6.2, 255, 0 );
        tint(R, G, B);
      }
      
       if (tobj.getSymbolID()==5)
      {
        
        B =map(tobj.getAngle(), 0, 6.2, 255, 0 );
        tint(R, G, B);
      }
    }
  }
}

// --------------------------------------------------------------

// called when an object is added to the scene
void addTuioObject(TuioObject tobj) {
  if (verbose) println("add obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle());
  if (tobj.getSymbolID()==0)
  {
    loadImage= true;
  }
}

// called when an object is moved
void updateTuioObject (TuioObject tobj) {
  if (verbose) println("set obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+") "+tobj.getX()+" "+tobj.getY()+" "+tobj.getAngle()
    +" "+tobj.getMotionSpeed()+" "+tobj.getRotationSpeed()+" "+tobj.getMotionAccel()+" "+tobj.getRotationAccel());
}

// called when an object is removed from the scene
void removeTuioObject(TuioObject tobj) {
  if (verbose) println("del obj "+tobj.getSymbolID()+" ("+tobj.getSessionID()+")");
  if (tobj.getSymbolID()==0)
  {
    loadImage= false;
  }
  if (tobj.getSymbolID()==1)
  {
    imagewidth = img.width;
    imageheight = img.height;
  }
    if (tobj.getSymbolID()==2)
  { 
     rotate(tobj.getAngle());
  }
  if (tobj.getSymbolID()==3)
  {
    R = 255;  
    tint(R , G, B);
  }
    if (tobj.getSymbolID()==4)
  {
    G = 255;  
    tint(R , G, B);
  }
    if (tobj.getSymbolID()==5)
  {
    B = 255;  
    tint(R , G, B);
  }
}

// --------------------------------------------------------------
// called when a cursor is added to the scene
void addTuioCursor(TuioCursor tcur) {
  if (verbose) println("add cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+ ") " +tcur.getX()+" "+tcur.getY());
  //redraw();
}

// called when a cursor is moved
void updateTuioCursor (TuioCursor tcur) {
  if (verbose) println("set cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+ ") " +tcur.getX()+" "+tcur.getY()
    +" "+tcur.getMotionSpeed()+" "+tcur.getMotionAccel());
  //redraw();
}

// called when a cursor is removed from the scene
void removeTuioCursor(TuioCursor tcur) {
  if (verbose) println("del cur "+tcur.getCursorID()+" ("+tcur.getSessionID()+")");
  //redraw()
}

// --------------------------------------------------------------
// called when a blob is added to the scene
void addTuioBlob(TuioBlob tblb) {
  if (verbose) println("add blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+") "+tblb.getX()+" "+tblb.getY()+" "+tblb.getAngle()+" "+tblb.getWidth()+" "+tblb.getHeight()+" "+tblb.getArea());
  //redraw();
}



// called when a blob is moved
void updateTuioBlob (TuioBlob tblb) {
  if (verbose) println("set blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+") "+tblb.getX()+" "+tblb.getY()+" "+tblb.getAngle()+" "+tblb.getWidth()+" "+tblb.getHeight()+" "+tblb.getArea()
    +" "+tblb.getMotionSpeed()+" "+tblb.getRotationSpeed()+" "+tblb.getMotionAccel()+" "+tblb.getRotationAccel());
  //redraw()
}

// called when a blob is removed from the scene
void removeTuioBlob(TuioBlob tblb) {
  if (verbose) println("del blb "+tblb.getBlobID()+" ("+tblb.getSessionID()+")");
  //redraw()
}

// --------------------------------------------------------------
// called at the end of each TUIO frame
void refresh(TuioTime frameTime) {
  if (verbose) println("frame #"+frameTime.getFrameID()+" ("+frameTime.getTotalMilliseconds()+")");
  if (callback) redraw();
}
