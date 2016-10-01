// Software de dibujo

int grosor = 5; // variable para el grosor del pincel
boolean linea = false; //variable para la forma del pincel
int color1 = 1; // color del pincel
int color2 = 1; // color del fondo

void setup() {
  background(255);
  size(500,500);
}

void draw() {
  
  // dibujar botones
  // barra
  noStroke();
  fill(110);
  rect(0,0,500,35);
  
  // boton elipse
  fill(255);
  rect(100,5,25,25);
  stroke(1);
  ellipse(112,17,10,10);
  noStroke();
  
  // boton linea
  rect(130,5,25,25);
  stroke(1);
  line(135,17,150,17);
  noStroke();
  
  // boton color 1
  fill(255);
  rect(200,5, 15,25);
  fill(0);
  rect(215,5,10,25);
  
  // boton color 2
  fill(150,50,200);
  rect(235,5,15,25);
  fill(50,250,100);
  rect(250,5,10,25);
  
  // boton color 3
  fill(170,200,255);
  rect(270,5,15,25);
  fill(170,10,150);
  rect(285,5,10,25);
  
  // boton borrador
  fill(255);
  rect(400,5,25,25);
  
  // ACCIONES
  
  //accion dibujo
  
  if(mousePressed) {
    if(color1 == 1) {
      fill(0);
      stroke(0);
    }
    if(color1 == 2) {
      fill(50,250,100);
      stroke(50,250,100);
    }
     if(color1 == 3) {
      fill(170,10,150);
      stroke(170,10,150);
    }
    if(linea == false) {
      ellipse(mouseX,mouseY,grosor,grosor);
    }
    if(linea == true) {
      line(mouseX+grosor,mouseY+grosor,mouseX-grosor,mouseY-grosor);
    }
  }
  
  //accion borrar
  
  if(mousePressed && mouseX<425 && mouseX>400 && mouseY<30 && mouseY>5) {
    if(color2 == 1) {
      fill(255);
    }
    if(color2 == 2) {
      fill(150,50,200);
    }
    if (color2 == 3) {
      fill(170,200,255);
    }
    noStroke();
    rect(0,35,500,465);
  }
  
  // accion circulo
  
  if(mousePressed && mouseX<125 && mouseX>100 && mouseY<30 && mouseY>5) {
    linea = false;
  }
  
  // accion linea
  
  if(mousePressed && mouseX<155 && mouseX>130 && mouseY<30 && mouseY>5) {
     linea = true; 
  }
  
  // accion cambiar color 1
  
  if (mousePressed && mouseX<225 && mouseX>200 && mouseY<30 && mouseY>5) {
     color1 = 1;
     color2 = 1;
     fill (255);
     noStroke();
     rect(0,35,500,465);
  }
  
  // acciones cambiar color 2
  
  if (mousePressed && mouseX<260 && mouseX>235 && mouseY<30 && mouseY>5) {
    color1 = 2;
    color2 = 2;
    fill(150,50,200);
    noStroke();
    rect(0,35,500,465);
  }
  
  // accion cambiar color 3
  
  if (mousePressed && mouseX<295 && mouseX>270 && mouseY<30 && mouseY>5) {
     color1 = 3;
     color2 = 3;
     fill(170,200,255);
     noStroke();
     rect(0,35,500,465);
  }
  
}