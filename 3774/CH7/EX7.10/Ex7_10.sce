// exa 7.10 Pg 212
clc;clear;close;

// Given Data
d=35;// mm
d2=125;// mm
n=6;// factor of safety
T=800;// N.m
N=350;// rpm
tau_s=63;// MPa
tau_b=56;// MPa
tau_CI=10;// MPa
tau_k=46;// MPa

// Diameter of bolts:
F=2*T*10**3/d2/n;// N
//%pi/4*db**2*tau_b=F
db=sqrt(F/(%pi/4*tau_b));// mm
printf('\n (i) Diameter of bolts = %.2f mm. Use 8 mm.',db)

// Flange thickness
d1=2*d;// mm
//T=%pi/2*d1**2*t2*tau_CI
t2=T*1000/(%pi/2*d1**2*tau_CI);// mm
printf('\n (ii) Flange thickness = %.1f mm. Use t2 = 12 mm',t2)
t2=12;// mm

//Key dimensions
b=10;// mm (width of key)
t=7;// mm (from tables)
//T=l*b*tau_k*d/2
l=T*10**3/(b*tau_k*d/2);// mm
l=ceil(l);// mm
printf('\n (iii) Length of key = %.f mm\n\t\td=%.f mm\n\t\tb=%.f mm',l,d,b)

// Hub length
lh=l;// mm (length of hub)
printf('\n (iv) Hub length = %.f mm',l)
tau_c=T*10**3/(%pi/16*(d1**4-d**4)/d1);// N/mm.sq.
printf('\n shear stress in hub = %.2f N/mm.sq.',tau_c)
printf('It is nearly equal to %.f N/mm.sq.',tau_CI)
printf('\n hence design parameters are fine.')

// Power transmitted
P=2*%pi*N*T/60/10**3;// kW
printf('\n (v) Power transmitted = %.2f kW',P)
