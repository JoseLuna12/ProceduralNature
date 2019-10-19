
HColorPool colors;
int x, y;

HShape d = new HShape();
void setup(){
	size(1080,720);
	H.init(this).background(#474555);
	smooth(); 
  createHoja("HOJA.svg", 300);	
}

void draw(){
 
  
  
}

public void createHoja(String s , int v){

  colors = new HColorPool();
  
    colors
    .add(#009F7B)
    .add(#5C86F9)
    .add(#D76F44)
    .add();
  
  
  
  for (int i = 0; i < v; i++){
   x =(int)random(width);
    y = (int)random(height);
    d = new HShape(s);;
    d
      .strokeWeight(1)
      .stroke(#000000)
      .size( (int)random(25,125) )
      .rotate( (int)random(360) )
      .loc( x, y )
      .anchorAt(H.CENTER)
    ;
    d.randomColors( colors.fillOnly() );
    H.add(d);
    }
    H.drawStage();
}

void keyPressed(){
  save("diagonal"+random(0, 10)+".tif");
}
