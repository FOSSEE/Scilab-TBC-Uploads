//To Evaluate all the required impedances of a 25kVA Transformer
//Page 118
clc;
clear;

S=25*(10^3); //Rating of the transformer in VA
//Values in per unit
Rt=0.014; //Resistance of Transformer
Xt=0.012; //Reactance of transformer
Vh=7200; //High Voltage End in V
Vx=120; // Low Voltage End in V
Rb=(Vh^2)/S; //Base Value of Resistance
//Accroding to Lloyd's Formula

Zhx12=(1.5*Rt)+(%i*1.2*Xt); //Impedance referred to HV side when the winding x2x3 is shorted

n=Vh/Vx; //Turns Ratio

Zhx13=Rt+(%i*Xt); //Use of Entire low voltage winding

//Impedances of the required terms in pu
A=(2*Zhx13)-Zhx12;
B=((2*Zhx12)-(2*Zhx13))/(n^2);
C=B;

//Angle of Impedances
ta=atand(imag(A)/real(A));
tb=atand(imag(B)/real(B));

printf('\nThe Circuit impedances on the high voltage side is %g/_%g ohm\n',abs(A*Rb),ta)
printf('Each of the Circuit impedances on the low voltage side is %g/_%g ohm\n',abs(B*Rb),tb)























