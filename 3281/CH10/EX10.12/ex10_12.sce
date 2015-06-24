//Page Number: 562
//Example 10.12
clc;
//Given
Er=2.56;
w=25; //mils
t=14; //mils
d=70; //mils
E0=8.854D-12; //F/m

//(i) K factor
K=1/(1-(t/d));
disp(K,'K factor:');

//(ii) Fringe capacitance
C=[(E0*Er)*[2*K*log(K+1)-(K-1)*log(K^2-1)]]/%pi;
disp('pF/m',C*10^12,'Fringe capacitance:');

//(iii) Charecteristic Impedance
X=1/[((w*K)/d)+(C/(E0*Er))];
Z0=(94.15*X)/sqrt(Er);
disp('ohm',Z0,'Charecteristic Impedance:');


//Answer in book for Z0 is given as 50.29 but it should be 51.7

