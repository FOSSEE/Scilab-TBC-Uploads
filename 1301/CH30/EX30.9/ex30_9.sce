clc;
i=10;      //current in Ampere
t=3600;    //time in sec
F=96500;     //in Coloumb
v=1;       //valency
M=(i*t)/(F*v);   //calculating moles
disp(M,"No. of moles per hour = ");  //displaying result