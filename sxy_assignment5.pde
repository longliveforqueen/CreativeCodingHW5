boolean color1 = false;
boolean color2 = false;
boolean color3 = false;
int cnt = 0;
float speed = 0;
float easing = 0.07;
void setup(){
  size(800,600);
  background(0);
  //button1
  fill(255,215,0);
  rect(20, 40, 30, 20);
  //button2
  fill(255,106,106);
  rect(20, 70, 30, 20);
  //button3
  fill(85,26,139);
  rect(20, 100, 30, 20);
}

void draw(){
  boolean ifButton1 = (mouseX>=20)&&(mouseX<=50)&&(mouseY>=40)&&(mouseY<=60);
  boolean ifButton2 = (mouseX>=20)&&(mouseX<=50)&&(mouseY>=70)&&(mouseY<=90);
  boolean ifButton3 = (mouseX>=20)&&(mouseX<=50)&&(mouseY>=100)&&(mouseY<=120);
  //color1
  if(ifButton1){
    noStroke();
    fill(139,139,0);
    rect(20, 40, 30, 20);
    if(mousePressed){
      color1 = true;
      color2 = false;
      color3 = false;
    }
  else{
    noStroke();
    fill(255,215,0);
    rect(20, 40, 30, 20);
  }
  }//end
  
  //color2
  if(ifButton2){
    noStroke();
    fill(139,58,58);
    rect(20, 70, 30, 20);
    if(mousePressed){
      color1 = false;
      color2 = true;
      color3 = false;
    }
  else{
    noStroke();
    fill(255,106,106);
    rect(20, 70, 30, 20);
  }
  }//end
   //color2
  
  //color3
  if(ifButton3){
    noStroke();
    fill(139,0,139);
    rect(20, 100, 30, 20);
    if(mousePressed){
      color1 = false;
      color2 = false;
      color3 = true;
    }
  else{
    noStroke();
    fill(85,26,139);
    rect(20, 100, 30, 20);
  }
  }//end
  
  //line1
  if(ifButton1==false&&color1&&mousePressed){
        stroke(255,215,0);
        strokeWeight(5);
        line(mouseX,mouseY,pmouseX,pmouseY);
      }
  //line2
  if(ifButton2==false&&color2&&mousePressed){
        stroke(255,106,106);
        strokeWeight(3);
        cnt++;
        if(cnt%2==0)
        line(mouseX,mouseY,pmouseX,pmouseY);
      }
  //line3
  if(ifButton3==false&&color3&&mousePressed){
        stroke(85,26,139);
        float target = dist(mouseX, mouseY, pmouseX, pmouseY);
        speed += (target - speed) * easing;
  
        strokeWeight(speed/2);
        line(mouseX, mouseY, pmouseX, pmouseY);
        
      }   
}
