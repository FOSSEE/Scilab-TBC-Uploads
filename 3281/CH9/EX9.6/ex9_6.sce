//Page Number: 455
//Example 9.6
clc;
//Given
S11=0.60;
S12=0.045;
S21=2.50;
S22=0.50
TS=0.5;
TL=0.4;
Vrms=10; //V
Z0=50; //ohm

//(i)Reflection coefficients of input and output
Tin=S11+((S12*S21*TL)/(1-(S22*TL)));
Tout=S22+((S12*S21*TS)/(1-(S22*TS)));
disp(Tin,'Reflection coefficients of input:');
disp(Tout,'Reflection coefficients of output:');

//(ii) Gains
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

//Calculation for Tout and Gains are wrong in the book, hence the answers dont match

//(iii) Power available
Gt=9.4;
Pas=(sqrt(2)*Vrms)^2/(8*Z0);
Pal=Gt*Pas;
disp('W',Pas,'Power available at source:');
disp('W',Pal,'Power available at load:');
