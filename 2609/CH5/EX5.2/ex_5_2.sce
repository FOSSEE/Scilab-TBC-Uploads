//Ex 5.1
clc;
clear;
close;
format('v',5);
Rf=240;//kohm
//Vout=-4*Vx+3*Vy;
//case 1st
Vy=0;//V(But Vx is not=0)
//Vox=-Rf/R1*Vx=-4*Vx
R1=Rf/4;//kohm
//case 2nd
Vx=0;//V(But Vy is not=0)
//Voy=(1+Rf/R1)*R2*Vy/(R1+R2)=3*Vy
R2=3/(1+Rf/R1)*R1/((1-3/(1+Rf/R1)))
disp(R1,"Resistance R1(kohm)");
disp(R2,"Resistance R2(kohm)");
