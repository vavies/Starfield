int center = 250;
float outerK1 = 3;
float outerK2 = 1.2;
float innerK1 = 1;
float innerK2 = 0.9;
dot [] olive;
void setup(){
	size(500,500);
	olive = new dot[500];
	for(int i = 0; i<olive.length-250; i++){
		olive[i] = new dot();
	}
	for(int i = 250; i<olive.length; i++){
		olive[i] = new counterclock();
	}

}
interface circles{
	void show();
	void move(int u);
}
void draw(){
	background(0);
	for(int i = 0; i<olive.length; i++){
		olive[i].show();
		olive[i].move(i);
	}

}
class dot implements circles{
	float myX, myY;
	float angle, speed;
	dot(){
		myX = 250;
		myY = 250;
		angle = 90;
		speed = 0;
	}
	void show(){
		//ellipse(center,center,300,300);
		noStroke();
		fill((int)(Math.random()*10+95),(int)(Math.random()*40+100),(int)(Math.random()*10+245));
		ellipse(myX,myY,10,10);
	}
	void move(int u){
		myX = center + 150*cos(outerK1*(u+speed));
		myY = center + 150*sin(outerK2*(u+speed));
		speed = speed +0.005;
	}
}
class counterclock extends dot{
	void show(){
		noStroke();
		fill((int)(Math.random()*10+105),(int)(Math.random()*10+175),250);
		ellipse(myX,myY,10,10);
	}
	void move(int u){
		myX = center + 140*cos(innerK1*(u+speed));
		myY = center + 140*sin(innerK2*(u+speed));
		speed = speed -0.005;
	} 
}


