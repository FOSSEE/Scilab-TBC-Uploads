clc;
i=12;      //current in Ampere
t=7200;    //time in sec
A=65.37;   //molar mass of zinc
F=96500;     //in Coloumb
v=2;       //valency
m=(i*t*A)/(F*v);  //calculating mass
disp(m,"Mass in gm = ");  //displaying result