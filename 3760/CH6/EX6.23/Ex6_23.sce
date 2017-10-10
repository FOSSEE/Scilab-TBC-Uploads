clc;
Pm=100000;
V=420;
P=6;
f=50;
sfl=0.04;
smT=0.2;

//for part a
disp('for part a');
Pg=Pm/(1-sfl);
Ws=(4*%pi*f)/P;
Tefl=Pg/Ws;
//a=Tefl/Tem
a=(1/(2/((sfl/smT)+(smT/sfl))));
Tem=a*Tefl;
mprintf('Maximum Torque is %f Nm \n',Tem);

//for part b
disp('for part b');
//b=Test/Tem
b=2/((1/smT)+(smT));
Test=b*Tem;
mprintf('The starting Torque is %f Nm \n',Test)

//for part c
disp('for part c');
Prot=sfl*Pg;
mprintf('Rotor Ohmic losses are %f W \n',Prot)

//for part d
disp('for part d');    
//Output is proportional to (s(1-s))/r2
//Given conditions gives the equation as s1*s1-s1+0.0768
Q=[1 -1 0.0768];
R=roots(Q);
s1=R(2);
mprintf('Slip is %f \n',s1)

//for part e
disp('for part e');    
Tefl=(Pm/(1-s1))/Ws;
mprintf('full-load torque is %f Nm \n',Tefl)

//for part f
disp('for part f');
smT1=2*smT;
mprintf('slip at maximum torque is %f',smT1);






    
    
