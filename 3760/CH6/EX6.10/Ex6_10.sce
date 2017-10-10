

clc;

//from 6.9 problem
P=4;
r1=0.15;
x1=0.45;
r2=0.12;
x2=0.45;
Xm=28.5;
s=0.04;
V=400;
f=50;
Pfixed=400;
t=1.2; // rotor effective turns ratio

//for part a
//According to the conditions and diagram
t1=complex(r1,x1);
t2=complex(0,Xm);
t3=complex(r1,x2+Xm);
Ze=(t1*t2)/(t3);
Re=real(Ze);
Xe=imag(Ze);
t4=complex(Re,(x2+Xe));
SmT=(r2)/(sqrt((Re*Re)+((x2+Xe)*(x2+Xe))));
Ve=(V/sqrt(3))*(Xm/(x2+Xm));
Ws=(4*%pi*f)/P;
Tem=(3/Ws)*Ve^2*(1/2)*(1/(Re+sqrt(Re^2+(x2+Xe)^2)));
Pm=Tem*(1-SmT)*Ws;
Psh=Pm-Pfixed;
Tsh=Psh/(Ws*(1-SmT));
mprintf('for part a \n slip = %f \n maximun torque = %f Nm \n power output = %f KW \n',SmT,Tem,   Psh/1000);


//for part b
s=1;
I2st=(Ve)/(sqrt((r2+Re)*(r2+Re)+(x2+Xe)*(x2+Xe)));
Test=(3/Ws)*I2st*I2st*(r2);
mprintf(' for part b rotor current = %f A \n torque = %f Nm \n',I2st,Test);


//for part c
R=sqrt(Re^2+(x2+Xe)^2)-r2;
Ra=R/(t^2);
mprintf('for part c \n external resisitance value is = %f Ohm \n',Ra);

//for part d
s1=0.04;
Pm=((3*(Ve)*(Ve))*r2*((1-s1)/s1))/(((Re+r2+((r2*(1-s1)/s1))))*((Re+r2+((r2*(1-s1)/s1))))+((x2+Xe)*(x2+Xe)));
mprintf('for part d \n power developed is %f KW \n',Pm/1000);

//for part e
SmP=(r2)/(sqrt(((Re+r2)*(Re+r2))+((x2+Xe)*(x2+Xe)))+r2);
Pmn=((3/2)*Ve*Ve)/(Re+r2+sqrt((r2+Re)*(r2+Re)+(x2+Xe)*(x2+Xe)));
mprintf('for part e \n slip = %f \n power developed = %f KW',SmP,Pmn/1000);





















