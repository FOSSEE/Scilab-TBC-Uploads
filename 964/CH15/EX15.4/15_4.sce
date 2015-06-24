clc;
clear;
Mt=2000;//kg
g=9.8;//m/s^2
c0=200;//$
c1=56;//$/m
c2=0.1;//$/m^2
vc=20;//m/s
kc=3;//kg/(s*m^2)
z0=500;//m
t=27;
r=2.943652;
n=6;
A=2*%pi*r*r;
l=(2^0.5)*r;
c=3*A;
m=Mt/n;
function y=f(t)
    y=(z0+g*m*m/(c*c)*(1-exp(-c*t/m)))*c/(g*m);
endfunction

    while abs(f(t)-t)>0.00001
        t=t+0.00001; 
    end
v=g*m*(1-exp(-c*t/m))/c;
disp(v,"The final value of velocity=")
disp(n,"The final no. of load parcels=")
disp("m",r,"The chute radius=")
disp((c0+c1*l+c2*A*A)*n,"The minimum cost($)=")
