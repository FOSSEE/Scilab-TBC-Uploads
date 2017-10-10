//answer match + roots 

clc;
Pm=10000;
V=400;
f=50;
smT=0.1;
P=4;
Ns=(120*f)/P;

//for (i)
disp('(i)');
//As per given conditions the slip is given by equation Sfl2-0.4Sfl+0.01=0
V=[1 -0.4 0.01];
R=roots(V);
Sfl=R(2);
Nr=Ns*(1-Sfl);
mprintf('The slip is %f \n The rotor speed is %f r.p.m',Sfl,ceil(Nr));

//for (ii)
disp('(ii)');
Pg=Pm/(1-Sfl);
Prot=Sfl*Pg;
mprintf('The rotor ohmic loss is %f W \n',Prot);

//for (iii)
disp('(iii)');
Tefl=Pg/(2*3.14*(Ns/60));
Test=(4*Tefl)/((smT)+(1/smT));
mprintf('starting torque is %f Nm \n',Test);

//for (iv)
disp('(iv)');
a=sqrt(((Sfl*Sfl)+(smT*smT))/((Sfl)*(Sfl)*(1+(smT)*(smT))));
mprintf('starting current = %f full load current\n',a);

//for (v)
disp('(v)'); 
// answer is slightly different in book
b=sqrt((1/2)*(1+(smT/Sfl)^2));
mprintf('stator current at maximun torque = %f full load current \n',b);

//for (vi)
disp('(vi)');
E=(Pm/Pg)*100;
mprintf('full load efficiency is = %f percent\n',E);

//for (vii)
disp('(vii)');
//As per given conditions
smT1=3*smT;
mprintf('New slip value is %f \n',smT1);

//for (viii)
disp('(viii)');
//According to the given conditions s1(2)-1.2s+0.09
VV=[1 -1.2 0.09];
RR=roots(VV);
s1=RR(2);
Nr1=Ns*(1-s1);
mprintf('full load slip is %f rotor speed is %f r.p.m',s1,Nr1);

//for (ix)
disp('(ix)');
Test1=((2)/((1/0.3)+(0.3)))*(2*Tefl);
mprintf('starting torque is %f Nm \n',Test1);

//for (x)
disp('(x)');
c=sqrt((s1^2+smT1^2)/(s1^2*(1+smT1^2)));
mprintf('starting current = %f full load current \n',c);

//for (xi)
disp('(xi)');
Protfl=s1*Pg;
mprintf('Rotor ohmic loss at full load torque is %f W \n',Protfl);

//for (xii)
disp('(xii)');
Pm1=(1-s1)*Pg;
E=Pm1/Pg;
mprintf('Efficiency is %f percent',E*100);
