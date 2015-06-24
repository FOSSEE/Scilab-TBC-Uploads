//Page Number: 163
//Example 3.12
clc;
//Given
S11=0.6;
S12=0.045;
S21=2.5;
S22=0.50;
TS=0.5;
TL=0.4;
Z0=50; //ohm
Vrms=10; //V

//(i) Gain Parameters
//(i)Reflection coefficients of input and output
Tin=S11+((S12*S21*TL)/(1-(S22*TL)));
Tout=S22+((S12*S21*TS)/(1-(S22*TS)));

//Transducer Gain
x=(1-(TS)^2)/((1-(S11*TS))^2);
y=(S21*S21);
z=(1-(TL)^2)/((1-(Tout*TL))^2);
GT=x*y*z;
disp(GT,'Transducer Gain:');

//Available Power Gain
z1=1-(Tout)^2;
GA=(x*y)/z1;
disp(GA,'Available power Gain:'); 

//Power Gain
z2=1-(Tin)^2;
GP=(x*y)/z2;
disp(GP,'Power Gain:');

//(ii) Power levels
//Power available at source
Pavs=(sqrt(2)*Vrms)^2/(8*Z0);
disp('W',Pavs,'Power available at source:');

Pl=9.4*Pavs;
//Power available at input
Pin=Pl/13.5;
disp('W',Pin,'Power available at input:');

//(iii) VSWRs
M1=Pin/Pavs;
M2=Pl/(9.6*Pavs);

Tin1=sqrt(1-M1);
Tout1=sqrt(1-M2);

vswrin=(1+Tin1)/(1-Tin1);
disp(vswrin,'Input VSWR:');
vswrout=(1+Tout1)/(1-Tout1);
disp(vswrout,'Output VSWR:');

//Calculations for gain are done wrong in book, hence answers dont match
