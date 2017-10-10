// exa 7.9 Pg 209
clc;clear;close;

// Given Data
d=36;// mm
P=15;// kW
N=720;// rpm
//Tmax=1.25*Tm
sigma_yt=245;// MPa (for C20 steel)
n=3;// factor of safety
sigma=82;// MPa (Design tensile stress)

tau=0.577*sigma;// MPa (shear stress)
sigma_u=200;// MPa (for FG 200 cast Iron)
n2=5;// factor of safety (for FG 200 cast Iron)
tau2=20;// MPa shear stress (for FG 200 cast Iron)

// Max. torque transmitted
//P=2*%pi*N*Tm/(60*10**3)
Tm=P/(2*%pi*N/(60*10**3))*1000;// N.mm
Tmax=1.25*Tm;// N.mm
printf('\n Maximum transmitted torque = %.f N.mm',Tmax)

// Hub diameter
tau_h=20;// MPa (permissible shear stress in hub)
//Tmax=(%pi/16)*(d1**4-d**4)/d1*tau_h   ...eqn(1)
d1=2*d;//mm (empirically)
tau_h=Tmax*1000/((%pi/16)*(d1**4-d**4)/d1);// MPa
t1=(d1-d)/2;// mm (thickness of hub)
printf('\n Hub diameter = %.f mm',d1)
printf('\n Thickness of hub = %.f mm',t1)
d4=d+t1;// mm
printf('\n Diameter of recess in flanges = %.f mm',d4)
d3=4*d;//mm
printf('\n Outside diameter of protecting flange = %.f mm',d3)

//Hub length
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
F=Tmax/r2/n;//N
//(%pi/4)*db**2*tau_b=F
db=sqrt(F/((%pi/4)*tau));// mm
printf('\n Bolt diameter = %.2f mm. Use db=6 mm for design purpose',db)
db=6;// mm (adopted for design)
bolt_dia=db;//mm

// Flange thickness
t2=0.5*t1+6;// mm (empirically)
printf('\n Flange thickness = %.1f mm. Use t=20 mm',t2)
//F=n*db*t2*sigma_c
sigma_ci=F/n/db/t2;// MPa
//2*%pi*d1**2*tau*t2/4=Tmax
tau=Tmax/(2*%pi*d1**2*t2/4);// MPa
printf('\n permissible bearing stress in flange = %.2f MPa < 40 MPa',sigma_ci)
printf('\n shearing of the flange at the junction with hub = %.2f MPa < 20 MPa.',tau)
printf(' Values are acceptable.')

// Check for crushing of bolt
//n*db*t2*sigma_cb*d2/2=Tmax
d2=d1+d;// mm
db=bolt_dia;//mm
sigma_cb=Tmax/(n*db*t2*d2/2);// MPa
printf('\n permissible crushing strength of bolts = %.2f MPa < 82 MPa.',sigma_cb)
printf(' Hence design is safe.')
// Thickness of protecting flange
t3=0.5*t2;// mm
printf('\n Thickness of protecting flange = %.f mm', t3)
// Hub overlap 
ho=3;// mm (min)
printf('\n Hub overlap = %.f mm (min)',ho)

