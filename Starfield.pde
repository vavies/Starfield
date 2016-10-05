int center = 250;
float outerK1 = 0.25;
float outerK2 = 0.75;
float innerK1 = 0.65;
float innerK2 = 1.25;
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
void draw(){
	background(0);
	for(int i = 0; i<olive.length; i++){
		olive[i].show();
		olive[i].move(i);
	}

}
class dot{
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
		fill(100,150,250);
		ellipse(myX,myY,10,10);
	}
	void move(int u){
		myX = center + 150*cos(outerK1*(u+speed));
		myY = center + 150*sin(outerK2*(u+speed));
		speed = speed +0.01;
	}
}
class counterclock extends dot{
	void show(){
		noStroke();
		fill(110,180,250);
		ellipse(myX,myY,10,10);
	}
	void move(int u){
		myX = center + 100*cos(innerK1*(u+speed));
		myY = center + 100*sin(innerK2*(u+speed));
		speed = speed -0.01;
	} 
}


