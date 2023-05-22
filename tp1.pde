int X = 10,Y = 410,W = 120 ,H = 60,X1,X2,Y1,Tr,N1,Ro,Ve;
float tiem,Ra,dist;
PImage img1,img2,img3,img4;
Boolean pg1,pg2,pg3,pg4,pg5,Frame; 



void setup(){
  size(640,480);
  img1 = loadImage("loro1/loro1.png");
  img2 = loadImage("loro1/loro2.jpg");
  img3 = loadImage("loro1/loro3.jpg");
  img4 = loadImage("loro1/loro4.jpg");
  pg1 = true;
  pg2 = false;
  pg3 = false;
  pg4 = false;
  pg5 = false;
  Frame = true;
}

void draw(){
  tiem = frameCount;
  println(tiem);
  //println(frameRate);
  if (pg1){
    if (Frame){
      frameCount = 0;
      tiem = frameCount;
      Frame = false;
    }
    image(img1,0,0);
    if ((mouseX >= X) && (mouseX <= X+W) && (mouseY >= Y) && (mouseY <= Y+H) ){
      fill(0,255,0);
      if (mousePressed){
        X1 = 690;
        N1 = 0;
        Tr = 0;
        pg1 = false;
        pg2 = true;
        Frame = true;
        frameCount = 0;
      }
  
    }
    else{
      fill(255,0,0);
    }
    rect(X,Y,W,H);
    fill(0);
    text("Cómo enseñarle \n a hablar a un loro",390,50);
    textSize(30);
    text("Empezar",15,450);
  }
  if (pg2){
    if (Frame){
      frameCount = 0;
      tiem = frameCount;
      Frame = false;
    }
    if (X1 >= 10){
      X1 -= 2;
    }
    if (X1 <= 10){
      Tr += 3;
    }
    image(img2,0,0);
    fill(0,255,0);
    text("Mientras mas comodo este el loro \n mas rapido aprende",X1,30);
    fill(0,255,0,Tr);
    text("Loro feliz = Loro inteligente",10,120);
    if (tiem >= 560){
      X1 = 750;
      X2 = 270;
      Tr = 0;
      pg2 =false;
      pg3 = true;
      Frame = true;
    }
  
  }
  
  if (pg3){
    if (Frame){
      frameCount = 0;
      tiem = frameCount;
      Frame = false;
    }
    if (N1 < 150){
      N1 += 1;
      X1 -= 3;
    if (X2 >= 125){
      X2 -= 1;
      Tr += 2;
    }
      }
    image(img3,0,0);
    fill(0,255,0);
    text("No lo entrenes mas de  " + N1/10,10,30); text("minutos seguidos",335,30);
    fill(0,255,0);
    text("Si lo haces, se va a empezar \n a estresar, incluso",X1,70);
    fill(255,0,0,Tr);
    text("ENOJAR",540,X2);
    
    if (tiem >= 300){
      pg3 =false;
      pg4 = true;
      Frame = true;
    }
  }
  
  if (pg4){
    if (Frame){
      frameCount = 0;
      tiem = frameCount;
      Frame = false;
    
    }
    fill(0,mouseX,mouseY);
    image(img4,0,0);
    text("Cada vez que diga la palabra que quieras \n dale un premio",10,30);
    
    if (tiem >=300){
      Frame = true;
      pg4 = false;
      pg5 = true;
    }
  
  }
  
  if (pg5){
    if (Frame){
      frameCount = 0;
      tiem = frameCount;
      Frame = false;
    }
    background(0);
    Ra = 60;
    dist = dist(width/2,height/2,mouseX,mouseY);
    if(dist <= Ra){
      fill(0,255,0);
      if (mousePressed){
        pg5 = false;
        pg1 = true;
        frameCount = 0;
      }
    }
    ellipse(width/2,height/2,Ra*2,Ra*2);
    fill(255,0,0);
  }
}
