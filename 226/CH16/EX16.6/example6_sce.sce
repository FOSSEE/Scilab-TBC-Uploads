//chapter 16
//example 16.6
//page 686
printf("\n")
printf("given")
rds=600;Vgs=1;Vd1=.7;f=100*10^3;
disp("wien bridge ocillator")
R4=560;
R3=2*((R4*rds)/(R4+rds))
I5=200*10^-6;Vo=6;
R6=Vgs/I5
R5=(Vo-(Vgs+Vd1))/I5
disp(" C4 discharge voltage ")
Vc=.1*Vgs
disp("C4 discharge time")
T=1/f
Ic=I5;
C4=(Ic*T)/Vc
Xc3=rds/10//at oscillating frequency
C3=1/(2*3.14*f*Xc3)