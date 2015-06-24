clc;
i=50;      //current in Ampere
t=3600;    //time in sec
A=22.99;   //molar mass of zinc
F=96500;     //in Coloumb
v=1;       //valency
m=(i*t*A)/(F*v);  //calculating mass
disp(m,"Mass in gm = ");  //displaying result
M=(i*t)/(F*v);   //calculating moles
disp(M,"No. of moles per hour = ");  //displaying result