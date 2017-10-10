// exa 7.6 Pg 205
clc;clear;close;

// Given Data
P=135;// kW
N=120;// rpm
tau_s=55;// MPa
tau_b=45;// MPa
tau_ci=175;// MPa
sigma_ci=75;// MPa

//sigma_cs=2*tau_s;// MPa

//Tmax=1.5*Tm
mu=0.15;// coefficient of friction

//SHAFT DIAMETER
// P= 2*%pi*N*Tm/60/1000 
Tm=P/(2*%pi*N/60/1000);// N.m
// %pi*d**3*tau_s/16= Tm
d=(Tm/(%pi*tau_s/16)*1000)**(1/3);// mm
d=ceil(d)
printf('shaft diameter = %.2f mm.',d)
Tmax=Tm;// N.m

// HUB DIAMETER
// Tmax=%pi/16*((d1**4-d**4)/d1)*tau_h
tau_h=tau_ci;// MPa
//d1*(Tmax/(%pi/16)/tau_h)-d1**4=d**4 -- eqn(1)
Tmax=Tmax*1000;// N.mm
p=[1 0 0 -Tmax/(%pi*tau_h/16) -d**4] ;// polynomial coefficients from eqn(1)
d1=roots(p);// roots of poly 
d1=d1(1);// mm (taking +ve value)
d1=2*d;// mm (empirically adopted) 
t1=(d1-d)/2;// mm (thickness of hub)
printf('\n thickness of hub = %.f mm',t1)
d4=d+t1;// mm (diameter of recess in flanges)
printf('\n diameter of recess in flanges = %.f mm',d4)
d3=4*d;// mm (outside diameter of protecting flange)
printf('\n outside diameter of protecting flange = %.f mm.',d3)

//Key size & Hub length
b=d/4;// mm (width of key)
l=1.5*d;// mm (length of key)
printf('\n width of key = %.1f mm.',b)
printf('\n length of key = %.f mm.',l) 
t=b;// mm (thickness for square key)
printf('\n thickness for square key = %.f mm',t)
printf('\n Hub length = %.f mm',l)

//Number of bolts
n=ceil(4*d/150+3);// no. of bolts
printf('\n Number of bolts = %.2f.',n)

// Bolt diameter
r2=1.5*d;// mm
F=Tm*1000/r2/n;//N
//(%pi/4)*db**2*tau_b=F
db=sqrt(F/((%pi/4)*tau_b));// mm
printf('\n Bolt diameter = %.2f mm. Use db=20 mm for design purpose',db)
db=20;// mm (adopted for design)
bolt_dia=db;//mm

// Flange thickness
t2=0.5*t1+6;// mm (empirically)
printf('\n Flange thickness = %.1f mm. Use t=20 mm',t2)
//F=n*db*t2*sigma_c
sigma_ci=F/n/db/t2;// MPa
//2*%pi*d1**2*tau*t2/4=Tmax
tau=Tmax/(2*%pi*d1**2*t2/4);// MPa
printf('\n permissible bearing stress in flange = %.2f MPa < 75 MPa',sigma_ci)
printf('\n shearing of the flange at the junction with hub = %.2f MPa < 175 MPa.',tau)
printf(' Values are acceptable.')

// Check for crushing of bolt
//n*db*t2*sigma_cb*d2/2=Tmax
d2=d1+d;// mm
db=bolt_dia;//mm
sigma_cb=Tmax/(n*db*t2*d2/2);// MPa
printf('\n permissible crushing strength of bolts = %.2f MPa < 60 MPa.',sigma_cb)
printf(' Hence design is safe.')
// Thickness of protecting flange
t3=0.5*t2;// mm
printf('\n Thickness of protecting flange = %.f mm', t3)
// Hub overlap 
ho=3;// mm (min)
printf('\n Hub overlap = %.f mm (min)',ho)
