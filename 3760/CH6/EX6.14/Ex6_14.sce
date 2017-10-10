
clc;
Pm=60000;
P=6;
s=0.04;
V=400;
smT=0.2;
f=50;
Ns=(120*f)/P;

Ws=(2*%pi*Ns)/60;
Wr=Ws*(1-s);
Tefl=Pm/Wr;

//for part a
Tem=(((smT/s)+(s/smT))/2)*Tefl;
mprintf('for part a \n the maximun torque is %f Nm\n',Tem);

//for part b
Prot=(s/(1-s))*(Pm);
mprintf('for part b \n the rotor ohmic loss is  %f W\n',Prot);

//for part c
smT1=2*smT;
mprintf('for part c \n THe new slip is %f \n',smT1);

//for part d
//On analysis the slip is given by 
s2=0.084;
mprintf('for part d \n full load slip is %f \n',s2);

//for part e
T2=Pm/((Ws)*(1-s2));
mprintf('for part e \n the full load torque is %f Nm\n',T2);






