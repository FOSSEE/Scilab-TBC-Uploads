clc;
clear;
W=375;
V=3;
f=50;
P=10;
r2=0.39;//Rotor resistance
X1=5.75;//Leakage reactance
Rsr=4.65//Stator to rotor turns ratio
Sfl=0.022;//Full load slip
Ws=62.8;//Synchronous speed
Wfl=125;//Full load output
Tfl=Wfl/(Ws*0.978);//Full load torque
Tpo=(1730^2)/(2*X1*Ws);//Pull out torque
disp('Constant torque')
q=Tfl/Tpo;
R2=0.5*(X1/q)*(1+(1-(q^2)));
R=R2-r2;
Sp2=0.5*(Wfl/0.978);
pf=0.5;
Rrt=R/(Rsr^2);
disp(Rrt,'Actual resistance in rotor turn:')
disp('Torque proportional to speed squared')
Sp3=2.04*((0.5/0.978)^2);
q1=Sp3/Tpo;
R2o=0.5*(X1/q1)*(1+(1-(q1^2)));
R1=R2o-r2;
Sp4=16.6;
pf1=0.5;
Rrt2=R1/(Rsr^2);
disp(Rrt2,'Actual resistance in rotor turn:')
