//example 7.8
clc;funcprot(0);
//Initialization of Variable
V1=12;//V
V2=5;//V
Il=1;//load current
T=10;//microsec
K=1.25;//Npri/Nsec
L=85;//microH
//calculation
Vq=V1+V2*K;
disp(Vq,"maximum voltage in V:")
Vd=V1*K+V2;
disp(Vd,"diode voltage in V:")
D=round((K*V2)*100/(V1+K*V2))/100;
disp(D,"duty cycle:")
Po=V2*Il;
disp(Po,"power delivered in W:")
Pi=round(Po/.09)/10;
Id=Pi/V1;
disp(Id*1000,"average current in mA:")
Im=Id/D;
disp(Im,"mid primary current in A:")
Ir=(Im*D^.5);
disp(Ir*1000,"rms current in mA:")
i=V1*D*T/L;
disp(i*1000,"ramp current in mA:")
IM=Im+.24;
disp(IM,"maximum transistor current in A:")
Imin=Im-.24;
disp(Imin,"minimum transistor current in A:")
Ip=K*IM;
disp(Ip,"diode peak current in A:")
Imid=Il/(1-D);
Irms=Imid*(1-D)^.5;
disp(Irms,"secondary rms current in A:")
C=D*Il*T/20;
disp(C*1000,"capacitor in microF:")
clear()

