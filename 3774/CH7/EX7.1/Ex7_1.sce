// exa 7.1 Pg 195
clc;clear;close;

// Given Data
P=20;// kW
N=240;// rpm
tau_s=45;// MPa
tau_b=30;// MPa
sigma_b=60;// MPa
sigma_cs=2*tau_s;// MPa
tau_ci=15;// MPa
//Tmax=1.25*Tm
mu=0.15;// coefficient of friction

//SHAFT DIAMETER
// P= 2*%pi*N*Tm/60/1000 
Tm=P/(2*%pi*N/60/1000);// N.m
Tmax=1.25*Tm;// N.m
// %pi*d**3*tau_s/16= Tmax
d=(Tmax/(%pi*tau_s/16)*1000)**(1/3);// mm
printf('shaft diameter = %.2f mm. Use d = 50 mm.',d)
d=50;// mm

// HUB DIAMETER
// Tmax=%pi/16*((d1**4-d**4)/d1)*tau_h
tau_h=tau_ci;// MPa
//d1*(Tmax/(%pi/16)/tau_h)-d1**4=d**4 -- eqn(1)
Tmax=Tmax*1000;// N.mm
p=[1 0 0 -Tmax/(%pi*tau_h/16) -d**4] ;// polynomial coefficients from eqn(1)
d1=roots(p);// roots of poly 
d1=d1(1);// mm (taking +ve value)
d1=100;// mm (empirically adopted) 
t1=(d1-d)/2;// mm (thickness of hub)
printf('\n thickness of hub = %.f mm',t1)
d4=d+t1;// mm (diameter of recess in flanges)
printf('\n diameter of recess in flanges = %.f mm',d4)
d3=4*d;// mm (outside diameter of protecting flange)
printf('\n outside diameter of protecting flange = %.f mm',d3)

// Hub length
b=d/4;// mm (width of key)
l=1.5*d;// mm (length of key)
printf('\n width of key = %.1f mm. Use b = 15 mm',b)
b=15;// mm
printf('\n length of key = %.f mm.',l) 
t=b;// mm (thickness for square key)
printf('\n thickness for square key = %.f mm',t)
printf('\n Hub length = %.f mm',l)

//Number of bolts
n=floor(4*d/150+3);// no. of bolts
printf('\n Number of bolts = %.f',n)

// Bolt diameter
r2=1.5*d;// mm
F=Tmax/r2/n;// N
//%pi/4*db**2*tau_b=F
db=sqrt(F/(%pi/4*tau_b));// mm
printf('\n Bolt diameter = %.2f mm. Use db=12 mm',db)
bolt_dia=db;//mm

// Bolt diameter based on Tensile load
r3=d3/2;// mm
r4=d4/2;// mm
rf=2/3*((r3**3-r4**3)/(r3**2-r4**2));// mm
//Tmax=n*mu*Pi*rf;// N
Pi=Tmax/(n*mu*rf);// N
// Pi=%pi/4*db**2*sigma_t
sigma_t=sigma_b;// MPa
db=sqrt(Pi/(%pi/4*sigma_t));// mm 
printf('\n Bolt diameter (based on Tensile load) = %.1f mm. Use db=15 mm',db)
db=15;// mm (adopted)

// Flange thickness
t2=0.5*t1+6;// mm (empirically)
printf('\n Flange thickness = %.1f mm. Use t=20 mm',t2)
t2=20;// mm (adopted)
//F=n*db*t2*sigma_c
sigma_ci=F/n/db/t2;// MPa
//2*%pi*d1**2*tau*t2/4=Tmax
tau=Tmax/(2*%pi*d1**2*t2/4);// MPa
printf('\n permissible bearing stress in flange = %.2f MPa < 30 MPa',sigma_ci)
printf('\n shearing of the flange at the junction with hub = %.2f MPa < 15 MPa.',tau)
printf(' Values are acceptable.')

// Check for crushing of bolt
//n*db*t2*sigma_cb*d2/2=Tmax
d2=d1+d;// mm
db=bolt_dia;//mm
sigma_cb=Tmax/(n*db*t2*d2/2);// MPa
printf('\n permissible crushing strength of bolts = %.1f MPa < 60 MPa.',sigma_cb)
printf(' Hence design is safe.')

// Thickness of protecting flange
t3=0.5*t2;// mm
printf('\n Thickness of protecting flange = %.f mm', t3)
// Hub overlap 
ho=3;// mm (min)
printf('\n Hub overlap = %.f mm (min)',ho)
//Note - Answer for **Bolt diameter based on Tensile load** is calculated wrong in the textbook(error in Pi calculation).
