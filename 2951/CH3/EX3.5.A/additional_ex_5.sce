clc;
clear;
m1=0.3;
m2=0.4;
m3=0.5;
m4=0.6; //modulation indices
Pc=80;// Power in carrier signal 

mt=sqrt(m1^2+m2^2+m3^2+m4^2);

//a)
disp(mt,"Total Coefficient of Modulation ");

//calculation error in book

//b)
Ps=(mt^2)*Pc/2;
disp(Ps,"Sideband powers(in W) ");

//c)
disp(Pc+2*Ps,"Total Transmitted Power(in W)");

//d)
disp((Ps/(Pc+2*Ps))*100,"Efficiency Percentage");
