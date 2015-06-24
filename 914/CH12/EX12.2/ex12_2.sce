clc;
warning("off");
printf("\n\n example12.2 - pg562");
p=1.2047*0.06243;  //[lb/ft^3]
mu=(18.17*10^-6)*(0.6720);  //[lb/ft*sec]
v=mu/p;
x=2;  //[ft]
U=6;  //[ft/sec]
Nre=(x*U)/v;
disp("The Reynolds number is well within the laminar region",Nre,"Nre=");
del=5*x*(Nre)^(-1/2);
C1=0.33206;
Cd=2*C1*(Nre)^(-1/2);
L2=2;  //[ft]
L1=1;  //[ft]
b=1;
F=((2*(C1)*U*b))*((mu*p*U)^(1/2))*(((L2)^(1/2))-((L1)^(1/2)));
gc=32.174;
F=F/gc;
printf("\n\n The value of F properly expressed in force units is \n F=%e lbf",F);


