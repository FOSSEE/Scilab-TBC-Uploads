clc;
d=8.9;     //density of copper in gm/cm cube
V=6000*0.002;      //volume in cm cube
m=d*V;              //calculating mass in gm
i=100;      //current in Ampere
A=63.54;   //molar mass of copper
F=96500;     //in Coloumb
v=2;       //valency
t=(m*F*v)/(i*A);  //calculating time
disp(t,"Time in sec = ");  //displaying result