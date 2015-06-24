clc;
warning("off");
printf("\n\n example4.4 - pg101");
// given
x1=0;  //[cm]
x2=30;  //[cm]
p1=0.3;  //[atm]
p2=0.03;  //[atm]
D=0.164;  //[am^2/sec]
R=82.057;  //[cm^3*atm/mol*K]
T=298.15;  //[K]
// using the formula Nax*int(dx/Ax)=-(D/RT)*int(1*dpa)
a=integrate("1/((%pi/4)*(10-(x/6))^2)","x",x1,x2);
b=integrate("1","p",p1,p2);
Nax=-((D/(R*T))*b)/a;
printf("\n\n Nax=%6emol/sec=%3emol/h \n the plus sign indicates diffusion to the right",Nax,Nax*3600);
