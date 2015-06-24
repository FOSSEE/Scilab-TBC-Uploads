clear;
clc;

//Caption: To find gain and resistance of Voltage Shunt Feedback
//Given Values
Rc=4;//in K
r=40;//in K
Rs=10;//in K
hie=1.1;//in K
hfe=50;
hre=0;
hoe=0;

//Required Formulae
rc=(Rc*r)/(Rc+r);
R=(Rs*r)/(Rs+r);
Rm=-(hfe*rc*R)/(R+hie);
B=-1/r;//in mA/V
D=1+(B*Rm);
Rmf=Rm/D;

//Avf = Vo/Vs = Vo/(Is*Rs) = Rmf/Rs
Avf=Rmf/Rs;

Ri = (R*hie)/(R+hie);
Rif=Ri/D;
disp('K',Rif,'Rif=');

//End