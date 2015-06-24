
//example 6.5
clc; funcprot(0);
//exapple 6.5 
// Initialization of Variable
rho=1000;
dc=.15;
l=7.8;
g=9.81;
pi=3.1428;
atp=105.4*1000;
vap_pre=10.85*1000;
sl=.22;
dp=0.045;
h=4.6;
//("x(t)=sl/2*cos(2*pi*N*t)"  "the function of displcement");
//"since we have to maximize the acceleration double derivate the terms");
//since double derivation have the term cos(kt) 
//finding it maxima
t=linspace(0,5,100);
k=1;
function[m,v]= maximacheckerforcosine()
h=0.00001;
a=0.00;
for i=1:400 
    if (cos(a+h)-cos(a-h))/2*h==0 & cos(i-1)>0 then
break;
else 
    a=0.01+a;
end 
break;   
end
m=i-1;
v=cos(i-1);
endfunction;
[a, b]= maximacheckerforcosine();
disp(a,"time t when the acceleration will be maximum(s)");
//double derivative will result in a square of value of N
//lets consider its coefficient all will be devoid of N^2 
k=sl/2*(2*pi)^2//accn max of piston
kp=k*1/4*pi*dc^2/1*4/pi/dp^2;//accn coeff. ofsuction pipe
f=1/4*pi*dp^2*l*rho*kp;//force exerted by piston
p=f/1*4/pi/dp^2;//pressure exerted by piston
//calculation
o=atp-h*rho*g-vap_pre;
//constant term of quadratic eqn
y=poly([o 0 -p],'N', 'coeff')
a=roots(y);
disp(abs(a(1,1)),"Maximum frequency of oscillation if cavitation o be avoided(in Hz)");








