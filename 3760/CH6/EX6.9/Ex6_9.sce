
clc;
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

t1=complex((r2/s),x2);
t2=complex(0,Xm);
t3=complex((r2/s),(x2+Xm));
T=(t1*t2)/t3;
Zab=complex(r1,x1)+T;
Rf=real(T);
I1=V/(sqrt(3)*abs(Zab));
ian=atand(imag(Zab),real(Zab));
Pf=cosd(ian);
I1_mag=sqrt(real(I1)*real(I1)+imag(I1)*imag(I1));
Psti=sqrt(3)*I1_mag*V*Pf;
Pg=3*I1*I1*Rf;
ns=(2*f)/P;
nr=(1-s)*ns;
Ws=2*3.14*ns;
Pm=(1-s)*Pg;
Psh=Pm-Pfixed;
To=(Psh)/((1-s)*Ws);
Psto=3*I1_mag*I1_mag*r1;
Prto=s*Pg;
Tls=Psto+Prto+Pfixed;
Pi=Psh+Tls;
E=(1-(Tls/Pi))*100;

mprintf('staror current = %f amp at lagging phase angle of %f w.r.t input voltage  \n rotor speed = %f rps or %f rpm output torque = %f Nm \n Efficiency = %f percent',I1,ian,nr,nr*60,To,E);

