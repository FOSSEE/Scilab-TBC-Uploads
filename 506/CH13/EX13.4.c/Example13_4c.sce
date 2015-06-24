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
disp('K',Rm,'Rm=');
B=-1/r;//in mA/V
D=1+(B*Rm);
Rmf=Rm/D;

//Avf = Vo/Vs = Vo/(Is*Rs) = Rmf/Rs
Avf=Rmf/Rs;

Ri = (R*hie)/(R+hie);
Rif=Ri/D;

//If the input resistance looking to the right of Rs is rif then Rif=(rif*Rs)/(rif+Rs)
rif=(Rif*Rs)/(Rs-Rif);

disp('K',Rs+rif,'The impedence seen by the voltage source=Rif=');

Ro=40;//in K
r=40;//in K

Rm = -(hfe*r*R)/(R+hie);
Rof=Ro/(1+(B*Rm));
//We are writting Rof' = rof
rof=(Rof*Rc)/(Rof+Rc);
disp('K',rof,'rof=');

//End