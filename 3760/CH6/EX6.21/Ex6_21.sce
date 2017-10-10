clc;
f=50;
P=6;
Pmsh=10000; //Shaft Output
N=930;
Pw=600;
Pf=0.01*Pmsh; //Friction and Windage losses
Ns=(120*f)/P;
NmT=800; //Speed at maximum torque


//for part a
disp('for part a');
sfl=(Ns-N)/Ns;
Pm=Pmsh+Pf;
Pg=Pm/(1-sfl);
Pst=Pg+Pw;
mprintf('Total Rotor input is %f W \n Total Stator input is %f W \n',Pg,Pst);

//for part b
disp('for part b');
smT=(Ns-NmT)/Ns;
Ws=(2*%pi*Ns)/60;
Tefl=Pg/Ws;
Test=(((smT/sfl)+(sfl/smT))/2)*(2/((smT)+(1/smT)))*Tefl;
mprintf('Maximun Torque is %f Nm',Test);

