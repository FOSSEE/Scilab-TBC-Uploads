

//example 14.4
//design channel using method of curve fitting based onKennedy's theory
clc;funcprot(0);
//given
Q=45;         //discharge
N=0.0225;     //rugosity coefficient
m=1.05;       //critical velocity ratio
S=1/5000;     //Bed slope

r=(1.607*S^1.63*Q^0.033/(N^3.26*m^3.293)-0.258)^(-0.915);
D=(1.818*Q/(m*(r+0.5)))^(1/2.64);
B=r*D;
B=round(B);
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);


