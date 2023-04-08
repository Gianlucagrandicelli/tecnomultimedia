PImage img;

void setup(){
  size(800,800);
  img = loadImage("data/tiburon.jpg");
}

void draw(){
background(28,140,198);
image(img,0,400);
//Color
fill(255,200);
strokeWeight(3);
stroke(125);
line(700,225,670,215);
line(450,206,539,195);

noStroke();
bezier(700,225,700,350,250,300,150,275);
fill(125);
triangle(100,195,150,250,120,250);
triangle(100,320,150,275,121,270);
rect(121,250,27,30);
triangle(147,250,147,275,220,270);
triangle(215,270,185,260,700,225);
triangle(450,206,230,257,700,227);
triangle(440,206,703,228,575,193);
triangle(702,229,575,193,648,204);
//Cuerpo'
stroke(0);
strokeWeight(3);
noFill();
bezier(700,225,500,125,250,300,150,250);
bezier(700,225,700,350,250,300,150,275);
bezier(100,195,125,250,125,275,100,320);
line(100,320,150,275);
line(150,250,100,195);
//Caracteristicas
fill(0);
circle(650,225,10);
fill(28,140,198);
triangle(600,250,690,255,698,240);
noFill();
curve(470,270,510,250,510,290,470,300);
curve(470,270,520,250,520,290,470,300);
curve(470,270,530,250,530,290,470,300);
//Aletas
fill(125);
triangle(200,285,170,280,170,300);
triangle(230,257,200,230,200,259);
triangle(250,292,280,295,250,330);
triangle(400,215,450,204,400,145);
triangle(500,300,425,390,450,280);
fill(255,200);
triangle(550,302,600,296,600,370);
//TaparLineas
strokeWeight(6);
stroke(28,140,198);
line(692,253,695,245);
noLoop();
}
