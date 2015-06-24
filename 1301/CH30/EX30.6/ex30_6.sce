clc;
t=600;      //time in sec
i=100;      //current in Ampere
A=26.98;   //molar mass of aluminium
F=96500;     //in Coloumb
m=5.6;       //mass in gm
v=(i*t*A)/(F*m);  //calculating valency
disp(v,"Valency = ");  //displaying result