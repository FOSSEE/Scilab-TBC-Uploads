clc;
v=-20;         //velocity in m/sec
v0=15;        //velocity in m/sec
t=0.005;          //time in sec
a=(v-v0)/t;    //kinematical equation
disp(a,"Accelaration in m/sec square = ");    //displaying result
m=0.06;      //mass in kg
F=m*a;       //Newton's Law
disp(F,"Force in Newton = "); //displaying result
