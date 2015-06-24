//example 7.5 
clc; funcprot(0);
// Initialization of Variable
R=10.0;//resistance
V1=5.0;//V
V2=12.0;//V
Ta=80.0;//degreeC
Tb=150.0;
f=150.0;//frequency
//calculation
D=V1/V2;
disp(D*100,"duty cycle in %")
T=1/f;
disp(T*1000,"time period in microsec:")
t=D*T;
disp(t*1000,"on time in microsec:")
Id=V1/R;
disp(Id*1000,"load current in mA:")
i=.25*Id;
disp(i*1000,"ripple current in mA:")
Vl=V2-V1;
disp(Vl,"inductor voltage in V:")
L=Vl*t/i;
disp(L*1000,"inductor in microH:")
Ip=Id+i/2;
disp(Ip*1000,"inductor current in mA:")
Ic=Id/2;
disp(Ic*1000,"minimum capacitor current in mA:")
Vc=1.5*V2;
disp(Vc,"minimum capacitor voltage in V:")
K=V1/1.23-1;
disp(K,"Rf/Ri = :")
P=.01*V2+D*Id*1;
disp(P,"power of LM2595 in W:")
Q=(Tb-Ta)/P-2.2;
disp(Q,"thermal resistance in degreeC/W:")
clear()
