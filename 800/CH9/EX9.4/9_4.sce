//clear//
clc
clear
//exec("9.3data.sci");
t = 0:.0001:4;
t0=0;
function w=f(t,Y)
 
 w =zeros(5,1);

Fa0=80;
T0=75;
V=(1/7.484)*500;
UA=16000;
Ta1=60;
k=16.96e12*exp(-32400/1.987/(Y(5)+460));
Fb0=1000;
Fm0=100;
mc=1000;
ra=-k*Y(1);
rb=-k*Y(1);
rc=k*Y(1) ;
Nm=Y(4)*V;
Na=Y(1)*V;
Nb=Y(2)*V;
Nc=Y(3)*V;
ThetaCp=35+(Fb0/Fa0)*18+(Fm0/Fa0)*19.5;
v0=(Fa0/0.923)+(Fb0/3.45)+(Fm0/1.54);
Ta2=Y(5)- (Y(5)-Ta1)*exp (-UA/(18*mc));
Ca0=Fa0/v0
Cb0=Fb0/v0
Cm0=Fm0/v0
Q=mc*18*(Ta1-Ta2);
tau=V/v0;
NCp=Na*35+Nb*18+Nc*46+Nm*13.5;
w(1)=(1/tau)*(Ca0-Y(1))+ra;
w(2)=(1/tau)*(Cb0-Y(2))+rb;
w(3)=(1/tau)*(-Y(3))+rc;
w(4) =(1/tau)*(Cm0-Y(4));
w(5) = (Q-Fa0*ThetaCp*(Y(5)-T0)+(-36000)*ra*V)/NCp;
endfunction

x=ode([0;3.45;0;0;75],t0,t,f);
scf(1)
plot2d(t,x(1,:)); 

xtitle( 'Figure E9-4.1', 't', 'Ca' ) ;

scf(2)
plot2d(t,x(5,:)); 

xtitle( 'Figure E9-4.2', 't', 'T' ) ;
scf(3)
plot2d(x(5,:),x(1,:));
 
xtitle( 'Figure E9-4.3', 'T', 'Ca' ) ;




