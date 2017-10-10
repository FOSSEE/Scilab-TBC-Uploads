//debug
clc;
V1=420; //supply voltage
r1=2.95;
x1=6.82;
r2=2.08;
x2=4.11;
Iml=6.7; //magnetizing line current
Pw=269; //core loss
s=0.03; //slip
P=12;
f=50;
N=(120*f)/P;
Ns=(120*f)/P;

Im=Iml/sqrt(3);
//V1=E1+Im(r1+jx1)
//Above equation on solving gives the solution as E1*E1+52.8E1-175572.65
Q=[1 52.8 -175572.62];
R=roots(Q);
E1=R(2);
Xm=E1/Im;
//As per the circuit diagram
a=r2/s;
Zf=(((r2/s)+x2*%i)*Xm*%i)/((r2/s)+((x2+Xm)*%i));
Rf=real(Zf);
Zab=complex((real(Zf)+r1),(imag(Zf)+x1)); 
I1=420/Zab;
I1M=sqrt((real(I1)*real(I1))+(imag(I1)*imag(I1)));
an1=atand(imag(I1),real(I1));
pf=cosd(atand(imag(I1)/real(I1)));
I2=I1*(Xm*%i)*(1/((r2/s)+((x2+Xm)*%i)));
an2=atand(imag(I2),real(I2));
I2M=sqrt((real(I2)*real(I2))+(imag(I2)*imag(I2)));
T=3*(60/(2*%pi*N))*I1M*I1M*Rf;

mprintf('The power factor is %f Lag\n The input current is %f A lagging by an angle of %f degrees \n The output rotor current is %f A lagging by an angle of %f degrees \n The Torque developed is %f Nm \n',pf,I1M,-an1,I2M,-an2,T);


//For maximun Torque
X1=x1+Xm;
Re=(r1*Xm)/X1;
Xe=(x1*Xm)/X1;
smT=r2/(sqrt((Re)*(Re)+(x2+Xe)*(x2+Xe)));
Nm=Ns*(1-smT);
Tem=3*(E1)*(E1)*(1/(Re+(sqrt((Re)*(Re)+(x2+Xe)*(x2+Xe)))))*(1/2)*(1/(2*%pi*(N/60)));
mprintf('maximum torque developed is %f Nm \n corresponding speed is %f rpm',Tem,Nm);













