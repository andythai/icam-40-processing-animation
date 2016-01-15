// VIS/ICAM 40
// Andy Thai

// Variables
int radius, ccolor, bcolor, index, renderIndex, ballsToSpawn, bgcolor, renderIndex2, grow, radiusGrowth;

// Conditional booleans
boolean reached1550 = false;
boolean reached1400 = false;
boolean reached1250 = false;
boolean reached1100 = false;
boolean reached950 = false;
boolean reached800 = false;
boolean reached650 = false;
boolean reached500 = false;
boolean reached350 = false;

// Conditional boolean for rectangle end growth
boolean rectGrow = true;

// Conditional boolean for when middle circle has stopped shrinking
boolean hasStopped = false;

// Conditional boolean for when middle circle no longer needs to be modified.
boolean drawEllipse = true;

// True to record, false to not record
boolean record = true;

// The following declarations/instantiations are needed for the skeleton
// counter is needed to count to 300 images produced
int counter = 0;

// your filename start number (this to be assigned)
int startNumber = 8400; // THIS IS THE VALUE TO EDIT with your assigned start number for file names

// File extension
String fileExt = ".tiff";

// BouncyBubbles
int numBalls = 36;
float spring = 0.05; // 0.05
float gravity = 0.03; // default 0.03
float friction = -0.9; // -0.9

float radius2 = 0;

// First set of bouncing red balls
Ball[] balls = new Ball[numBalls];

// Last set of black balls
int numBalls2 = 204;
Ball[] balls2 = new Ball[numBalls2];

/******SETUP******/
void setup() {

  // Sets up bouncy balls
  renderIndex = 0; // Should always remain 0
  renderIndex2 = 0; // Do not touch
  ballsToSpawn = 3; // x-1 desired amount x

  // Var for rectangle growth
  grow = 0; // Do not touch

  // Initializes array holding balls
  for (int i = 0; i < numBalls; i++) {
    balls[i] = new Ball(width/2, height/2, 150, i, balls); //random(width), random(height)
  }

  // Initializes array holding 2nd set of balls
  for (int i = 0; i < numBalls2; i++) {
    balls2[i] = new Ball(random(width/3, width/1.5), random(height/3, height/1.5), random(width/3, width/1.5), i, balls2); //random(width), random(height)
  }

  // Sets up middle circle
  radius = 1700;
  size(3840, 2160);
  smooth();
  noStroke();
  frameRate(30);
  bcolor = 0;
  ccolor = 255;
  fill(0, 0, 255);
  ellipse(width/2, height/2, radius, radius);

  // Resets colors
  ccolor = 255;
  bcolor = 0;
  index = 0;

  // Background color
  bgcolor = 0;

  // Global var
  radiusGrowth = 25;
}

/******DRAW METHOD******/
void draw() {

  // Sets background to black
  if (hasStopped == false) {
    background(0);
  }

  // Draws and moves balls
  for (int i = 0; i < renderIndex; i++) {
    if (hasStopped == false) {
      balls[i].collide();
      balls[i].move();
      balls[i].display();
    }
  }

  /********************************/
  // SPAWN BALLS FOR EVERY BEAT //
  /********************************/
  // Changes radius
  if (reached350 == false && radius % 50 == 0) {
    // Flash red
    //background(255, 0, 0);
    if (radius == 1550 && reached1550 == false) {
      //delay(100);
      background(255, 0, 0);
      reached1550 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 40;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 1400 && reached1400 == false) {
      //delay(100);
      background(255, 0, 0);
      reached1400 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 1250 && reached1250 == false) {
      //delay(100);
      background(255, 0, 0);
      reached1250 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 1100 && reached1100 == false) {
      //delay(100);
      background(255, 0, 0);
      reached1100 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 950 && reached950 == false) {
      //delay(100);
      background(255, 0, 0);
      reached950 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 800 && reached800 == false) {
      //delay(100);
      background(255, 0, 0);
      reached800 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 650 && reached650 == false) {
      //delay(100);
      background(255, 0, 0);
      reached650 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 500 && reached500 == false) {
      //delay(100);
      background(255, 0, 0);
      reached500 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }

    if (radius == 350 && reached350 == false) {
      //delay(100);
      background(255, 0, 0);
      reached350 = true;
      radius = radius + 150;
      // Sets blue color
      if (ccolor != 15) {
        ccolor = ccolor - 20;
      }

      // sets red color
      if (bcolor != 250) {
        bcolor = bcolor + 25;
      }
      fill(bcolor, 0, ccolor);
      background(255, 0, 0);
      renderIndex = renderIndex + ballsToSpawn;
    }
  }

  /********************************/
  // SPAWN BALLS FOR EVERY BEAT END //
  /********************************/

  // Stop shrinking at radius 50
  if (hasStopped == false && radius != 350) {
    radius = radius - 25;
  } 

  // Freezes screen
  else if (hasStopped == false) {
    hasStopped = true;
    //delay(500);
  }


  // Increments background color growing red
  else if (bgcolor != 250) {
    bgcolor = bgcolor + 10;
    background(bgcolor, 0, 0);
  }

  // Grows middle circle
  else if (radius < width*1.3) {
    radius = radius + 120;
  } 

  // Sets draw ellipse flag to false 
  else if (drawEllipse == true && radius >= width*1.3) {
    drawEllipse = false;
  }

  // Draws and moves balls 
  else if (drawEllipse == false && renderIndex2 != 204) {
    if (renderIndex2 == 204) { //204
      drawEllipse = true;
      radius = 0;
    }
    for (int i = 0; i < renderIndex2; i++) {
      fill(0, 0, 0);
      balls2[i].collide();
      balls2[i].move();
      balls2[i].display();
    }
    radius2 = radius2 + 120;
    ellipse(width, height, radius2, radius2);
    renderIndex2 = renderIndex2 + ballsToSpawn;
  }


/*
  // Grows rectangles
  else if (rectGrow == true) {
    fill(220, 0, 15);
    rect(width/2 - (width*0.05), 0, width*0.1, grow);
    grow = grow + 80;
    if (grow > height) {
      rectGrow = false;
      grow = 0;
    }
  } 
  
  else if (rectGrow == false) {
    rect(width/2 - (width*0.05) + grow, grow, width*0.1 + grow, height);
    rect(width/2 - (width*0.05) - grow, grow, width*0.1 + grow, height);
    grow = grow + 40;
    if (grow > width) {
      background(0);
    }
  }
*/

/*
  // Grows circle to fill screen
  else if (drawEllipse == true) {
    fill(0, 0, 0);
    radius = radius + 100;
    ellipse(width/2, height/2, radius, radius);
    if (radius > width/3) {
      drawEllipse = false;
    }
  }
*/
  /*
  // Covers screen with black circles
   else if (drawEllipse == false) {
   fill(0, 0, 0);
   float radius2 = random(height/5, height/1.5);
   float blackWidth = random(width);
   float blackHeight = random(height);
   ellipse(blackWidth, blackHeight, radius2, radius2);
   delay(150);
   }
   */

  // Creates ellipse
  if (drawEllipse == true) {
    ellipse(width/2, height/2, radius, radius);
  }

  // save the image file - easy! and you might comment this out
  // for better testing performance because writing the image
  // to a file takes a lot of time
  if (record == true) {
    String nameStr = counter + startNumber + "";
    while (nameStr.length () < 6) { // think about this... what does it do?
      nameStr = "0" + nameStr;
    }

    nameStr = "output/" + nameStr;
    save(nameStr + fileExt); // actually writes the screen to a file

    // exit if greater than the assigned range (yes it says 299 below... why do you think?)
    if ((startNumber + counter) >= (startNumber + 299)) { 
      System.out.println("Saved all files, now exiting!");
      exit();
    } else {
      counter++;
    }
  }
}

/********************************************************/
// CLASSES //
/********************************************************/

// Class for moving colliding balls
class Ball {

  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  int id;
  Ball[] others;

  Ball(float xin, float yin, float din, int idin, Ball[] oin) {
    x = xin;
    y = yin;
    diameter = din;
    id = idin;
    others = oin;
  } 

  // Collision method
  void collide() {
    for (int i = id + 1; i < numBalls; i++) {
      float dx = others[i].x - x;
      float dy = others[i].y - y;
      float distance = sqrt(dx*dx + dy*dy);
      float minDist = others[i].diameter/2 + diameter/2;
      if (distance < minDist) { 
        float angle = atan2(dy, dx);
        float targetX = x + cos(angle) * minDist;
        float targetY = y + sin(angle) * minDist;
        float ax = (targetX - others[i].x) * spring;
        float ay = (targetY - others[i].y) * spring;
        vx -= ax;
        vy -= ay;
        others[i].vx += ax;
        others[i].vy += ay;
      }
    }
  }

  // Move method
  void move() {
    vy += gravity;
    x += vx;
    y += vy;
    if (x + diameter/2 > width) {
      x = width - diameter/2;
      vx *= friction;
    } else if (x - diameter/2 < 0) {
      x = diameter/2;
      vx *= friction;
    }
    if (y + diameter/2 > height) {
      y = height - diameter/2;
      vy *= friction;
    } else if (y - diameter/2 < 0) {
      y = diameter/2;
      vy *= friction;
    }
  }

  // Display method for balls
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}

