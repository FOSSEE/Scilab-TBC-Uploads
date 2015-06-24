//Page Number: 3.14
//Example 3.8
clc;
//Given
//From waveform
Amax=150;
Amin=30;

//(a)Modulation index
u=((Amax-Amin)/(Amax+Amin));
disp(u,"Modulation Index: ");

Ac=(Amax/(1+u));
//(b)
//Carrier Power
Pc=(Ac^2)/2;
disp("W",Pc,"Carrier Power: ");

//Side band Power
PSB=(Amin^2)/2;
disp("W",PSB,"USB=LSB Power: ");

//Total Average power
Pt=Pc+(2*PSB);
disp("W",Pt,"Total Average Power: ");

//(c)Peak Envelope Power
//Given
R=60; //Ohm
PEP=(Amax^2)/(2*R);
disp("W",PEP,"Peak Envelope Power: ");

//(d) Modulation Efficieny
n=PSB/Pt;
disp(n,"Modulation efficieny: ");

//(e) Given
//(i) u=0.2
u1=0.2;
A1=(60/u1)-Ac;
disp(A1, "A=");

//(ii) u=0.8
u2=0.8;
A2=(60/u2)-Ac;
disp(A2, "A=");




