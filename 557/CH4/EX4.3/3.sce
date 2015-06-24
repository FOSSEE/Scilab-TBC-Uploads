clc;funcprot(0);
//Example 4.3

//Initializing the variables 
vx= -poly(3,'x');
vy = 2*poly(-2,'x');
vz = -poly(2,'x'); 

//Calculations
delVx = derivat(vx); 
delVy = derivat(vy);
delVz = derivat(vz); 

result = derivat(vx)+derivat(vy)+derivat(vz); //requirement of continuity equation (result = 0)
disp("Satisfy requirement of continuity ");
 