clc;
i=20;      //current in Ampere
A=112.4;   //molar mass of cadmium
F=96500;     //in Coloumb
v=2;       //valency
m=50;       //mass in gm
t=(m*F*v)/(i*A);  //calculating time
disp(t,"Time in sec = ");  //displaying result