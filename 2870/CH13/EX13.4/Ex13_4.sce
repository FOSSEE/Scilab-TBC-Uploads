clc;clear;
//Example 13.4

//given data
NO=3;
NC=5;//moles of oxygen and carbondioxide repesctively
T0=25+273;//in K

//constants used
Ru=8.314;//in kJ/kg - K

//calculations
Nm=NO+NC;
yO=NO/Nm;
yC=NC/Nm;
//dSm= -Ru*(NO*log(yO)+NC*log(yC))
Sm=-Ru*(NO*log(yO)+NC*log(yC));
disp(Sm,'the entropy change in kJ/K');
Xdestroyed=T0*Sm/1000;
disp(Xdestroyed,'exergy destruction associated in MJ')
