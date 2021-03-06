# processingtutorial


RECOMENDACIÓN! VER EL VIDEO TURORIAL EN EL SIGUIENTE LINK: https://youtu.be/W9HCmHibQxk

YA QUE LA EXPLICACIÓN ESCRITA PUEDE NO SER SUFICIENTE PARA CUMPLIR LOS OBJETIVOS DEL TUTORIAL.

PROCESSING BÁSICO: VARIABLES, FUNCIONES Y BOTONES.


1 Qué se va a hacer?:

Un programa de dibujo con el mouse, diferentes formas, colores y borrador.


2 Nivel:

Introductorio - Intermedio.


3 Tiempo de ejecución:

Una hora.


4 Recursos necesarios:

Descargar processing 3 únicamente :)


5 Pasos a seguir / Tabla de contenido:

1 - Declarar las variables necesarias para su posterior uso.

2 - Escribir y entender las funciones setup() y draw().

3 - Usar las funciones background() y size() dentro de setup().

4 - Dibujar la interfaz/botones a partir de funciones como line(), rect() y ellipse().

5 - Programar las acciones de dichos botones, tomar las coordenadas y el click del mouse como input.


6 Objetivos:

Vamos a aprender a:

Hacer un código desde cero.

Entender y usar variables.

Usar las funciones setup() y draw() para códigos en contínua reproducción.

Usar diferentes funciones para nuestras necesidades, principalmente la funcion if().

Programar botones con las coordinadas y el click del mouse.


7 Explicación paso a paso sobre el código.

```javascript
// Software de dibujo


// PASO 1: DECLARAR VARIABLES

// variables sirven para almacenar valores. Tienen diferentes tipos como int = numeros enteros, boolean = verdadero o falso, float = números decimales, etc.


int grosor = 5; // variable para el grosor del pincel.

boolean linea = false; // variable para la forma del pincel.

int color1 = 1; // color del pincel.

int color2 = 1; // color del fondo.


// PASO 2: SETUP() Y DRAW()

void setup() { // función que sucede 1 vez.


// PASO 3: DENTRO DEL SETUP().

  background(255); // función para el color del fondo. RGB. Si se escribe 1 solo valor, processing toma ese valor para cada canal r,g,b.
  
  size(500,500); // función para determinar el tamaño en pixeles de nuestro programa.
  
}

void draw() { // función que se repite indefinidamente una y otra vez.
  
  
// PASO 4: DIBUJAR INTERFAZ/BOTONES.


  // barra superior contenedora de los botones
  
  noStroke(); // función para quitar el trazado a las formas.
  
  fill(110); // función para determinar el color del relleno para formas. rgb.
  
  rect(0,0,500,35); // función para dibujar un rectángulo. (posicion en x, posicion en y, tamaño en x, tamaño en y).
  
  
  // boton elipse
  
  fill(255);
  
  rect(100,5,25,25);
  
  stroke(1); // función para determinar el trazado para las formas en pixeles.
  
  ellipse(112,17,10,10); // fucnión para dibujar una ellipse. (posicion en x, posicion en y, tamaño en x, tamaño en y).
  
  noStroke();
  
  
  // boton linea
  
  rect(130,5,25,25);
  
  stroke(1);
  
  line(135,17,150,17); // función para dibujar una línea. (coordenada x1, coordenada y1, coordenada x2, coordenada y2).
  
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
  
  
// PASO 5: PROGRAMAR LAS ACCIONES DE DIBUJO Y DE LOS BOTONES.

  
  // accion dibujo
  
  if(mousePressed) { // función para preguntar si una condición () es verdadera; si lo es se realiza el código entre {}, sino se salta. En este caso la funcion grande if esta preguntando si el mouse esta siendo presionado o no. luego, si en efecto el mouse está siendo presionado, se pregunta que valor tiene la variable color1; si 1, 2 o 3, valores correspondientes a nuestras 3 opciones de color.
  
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
    
    // luego de esos tres if(), ya se seleccionó un color fill(), ahora se pregunta si la variable linea es verdadera o falsa, para dibujar una linea o una elipse respectivamente, del color anteriormente seleccionado.
    
    if(linea == false) {
    
      ellipse(mouseX,mouseY,grosor,grosor); //la ellipse se dibujará en las coordenadas del mouse, y como esta función está dentro del draw(), se repetirá indefinidamente mientras tengamos el mouse presionado.
      
    }
    
    if(linea == true) {
    
      line(mouseX+grosor,mouseY+grosor,mouseX-grosor,mouseY-grosor);
      
    }
    
  }
  
  
  // accion borrar
  
  // primer if() preguntará si se esta haciendo click con el mouse DENTRO del botón de borrador. Esto se hace uniendo las diferentes condiciones con && que obliga a que todas se cumplan o de lo contrario no se ejecuta el código dentro de los {}.
  
  if(mousePressed && mouseX<425 && mouseX>400 && mouseY<30 && mouseY>5) {
  
  // despues de la primera comprobacion, los siguientes if() preguntarán qué opcion de color es la variable, y se asignará ese color al rect() que dibujamos al final de los 3 if().
  
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
  
  // cambia la variable a falso, para que al dibujar se creen elipses en vez de líneas.
  
  if(mousePressed && mouseX<125 && mouseX>100 && mouseY<30 && mouseY>5) {
  
    linea = false;
    
  }
  
  
  // accion linea
  
  // cambia la variable a verdadero, para que al dibujar se creen líneas en vez de elipses.
  
  if(mousePressed && mouseX<155 && mouseX>130 && mouseY<30 && mouseY>5) {
  
     linea = true; 
     
  }
  
  
  // accion cambiar color 1
  
  // cambia las variables de color a la opcion 1, y crea un rectángulo con el nuevo color de fondo.
  
  if (mousePressed && mouseX<225 && mouseX>200 && mouseY<30 && mouseY>5) {
  
     color1 = 1;
     
     color2 = 1;
     
     fill (255);
     
     noStroke();
     
     rect(0,35,500,465);
     
  }
  
  
  // acciones cambiar color 2
  
  // cambia las variables de color a la opcion 2, y crea un rectángulo con el nuevo color de fondo.
  
  if (mousePressed && mouseX<260 && mouseX>235 && mouseY<30 && mouseY>5) {
  
    color1 = 2;
    
    color2 = 2;
    
    fill(150,50,200);
    
    noStroke();
    
    rect(0,35,500,465);
    
  }
  
  
  // accion cambiar color 3
  
  // cambia las variables de color a la opcion 3, y crea un rectángulo con el nuevo color de fondo.
  
  if (mousePressed && mouseX<295 && mouseX>270 && mouseY<30 && mouseY>5) {
  
     color1 = 3;
     
     color2 = 3;
     
     fill(170,200,255);
     
     noStroke();
     
     rect(0,35,500,465);
     
  }
  
}

```

Y eso es todo :)
