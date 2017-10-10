clc;
P=10;
f=50;
Pm=48000;
pf=0.8;
f21=120; //min frequency range
f22=300; //max frequency range
Ns=(120*f)/P;

//for f2=300
Nr1=((120*f21)/P)-Ns;
//for f2=600
Nr2=((120*f22)/P)-Ns;
mprintf('Thus the dc motor changes speed from %f to %f rpm \n',Nr1,Nr2)

//for part b and c
s1=(Nr1+Ns)/Ns;
s2=(Nr2+Ns)/Ns;
Pr=Pm/pf;
Pr1=Pr/s1;
Pr2=Pr/s2;
R1=(s1-1)*Pr1*pf;
R2=(s2-1)*Pr2*pf;
T1=(R1*60)/(2*%pi*Nr1);
T2=(R2*60)/(2*%pi*Nr2);
// stator should be able to handle higher KVA
mprintf('KVA rating of induction motor stator is %f KVA\n',Pr1/1000)
mprintf('DC motor rating is %f KW \n Maximum torque output from DC motor is %f Nm \n',R2/1000,T1);

//for part d
//When speed is limited to 2700 rpm
P1=((120*f22)-(120*f))/2700;
P1=ceil(P1);
mprintf('Number of Poles is %d \n',P1);

//for part e
Nr11=((f22*120)/P1)-((120*f)/P1);
Nr22=((f21*120)/P1)-((120*f)/P1);
mprintf('Thus the new speed range of dc motor is from %f to %f rpm \n',Nr22,Nr11);







