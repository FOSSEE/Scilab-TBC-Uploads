//example 7.7
clc;funcprot(0);
//Initialization of Variable
V1=12;//V
V2=22;//V
I=.7;//A
Ta=80;//degreeC
Ps=17.1//supply power
//calculation
K=V2/1.23-1;
disp(K,"Rf/Ri=:")
printf('pick Rf=22; Ri=1.3;')
Id=round(Ps/V1*10)/10;
D=round((1-(V1/V2))*100)/100;
Ir=D^.5*Id;
disp(Id,"rms current in A:")
Ps=Ir^2*.15;
disp(Ps*1000,"switch power in mW:")
Pi=D*Id*V1/50;
disp(Pi*1000,"IC power in mW:")
P=Ps+Pi;
disp(P*1000,"total power in mW:")
T=Ta+P*65;
disp(T,"IC temperature in degreeC:")
clear()
