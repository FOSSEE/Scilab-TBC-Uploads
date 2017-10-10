// exa 7.2 Pg 200
clc;clear;close;

// Given Data
P=30;// kW
N=750;// rpm
//Tmax=1.2*Tm;// MPa
tau_s=35;// MPa
tau_b=35;// MPa
tau_k=35;// MPa
sigma_cs=70;// MPa
sigma_ck=70;// MPa
sigma_cb=70;// MPa
tau_ci=15;// MPa
pb=0.8;// MPa

//sigma_cs=2*tau_s;// MPa

//Tmax=1.5*Tm
mu=0.15;// coefficient of friction

//SHAFT DIAMETER
// P= 2*%pi*N*Tm/60/1000 
Tm=P/(2*%pi*N/60/1000);// N.m
Tmax=1.2*Tm;// N.m
// %pi*d**3*tau_s/16= Tmax
d=(Tmax/(%pi*tau_s/16)*1000)**(1/3);// mm
printf('shaft diameter = %.2f mm. Use d = 42 mm.',d)
d=42;// mm

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
//d4=d+t1;// mm (diameter of recess in flanges)
//printf('\n diameter of recess in flanges = %.f mm',d4)
d3=4*d;// mm (outside diameter of protecting flange)
printf('\n outside diameter of protecting flange = %.f mm. Use 170 mm',d3)
d3=170;// mm (adopted)

//Key size & Hub length
b=d/4;// mm (width of key)
l=1.5*d;// mm (length of key)
printf('\n width of key = %.1f mm. Use b = 12 mm',b)
b=12;// mm
printf('\n length of key = %.f mm.',l) 
t=b;// mm (thickness for square key)
printf('\n thickness for square key = %.f mm',t)
printf('\n Hub length = %.f mm',l)

//Number of bolts
n=(0.04*d+3);// no. of bolts
printf('\n Number of bolts = %.2f. Use n=6',n)
n=6;// adopted

// Bolt diameter
db=0.5*d/sqrt(n);// mm
printf('\n Bolt diameter = %.2f mm. Use db=20 mm for design purpose',db)
db=20;//mm (adopted)
bolt_dia=db;//mm
dsb=24;// mm(shank diameter of bolt for design)

// Outer diameter of rubber bush
trb=2;// mm (thickness of rubber bush)
tbb=6;// mm (thickness of brass bush)
d3=dsb+2*trb+2*tbb;// mm 
d2=d1+d3+2*tbb;// mm (pitch circle diameter of bolts)
printf('\n pitch circle diameter of bolts = %.f mm ',d2)

// Check of shear in bolt
F=2*Tmax/n/d2;// N
//%pi/4*db*2*tau=F
tau=F/(%pi/4*db**2);//MPa
printf('\n Permissible shear stress in bolts = %.2f MPa < 35 MPa. Hence design is safe.', tau)

// Length of brush
pb=0.8;// MPa(bearing pressure of brush)
//F=l2*d3*pb;
l2=F/d3/pb;// mm
printf('\n length of bush = %.f mm',l2)

// Check for pin in bending
c=5;// mm (clearance between two flanges)
l3=(l2-c)/2+c;//mm
//M=%pi/32*db**3*sigma_b & M=F*l3
sigma_b = F*l3/(%pi/32*db**3);// MPa
printf('\n Bending stress in pin = %.1f MPa',sigma_b)

// Maximum shear stress in pin
tau_max=sqrt((sigma_b/2)**2+tau**2);//MPa
printf('\n Maximum shear stress in pin = %.2f MPa < 35 MPa. Hence design is safe.',tau_max)

// Flange thickness
t2=0.5*t1+6;// mm (empirically)
printf('\n Flange thickness = %.1f mm. Use t=18 mm',t2)
t2=18;// mm (adopted)
tau=Tmax/(2*%pi*d1**2*t2/4);// MPa
printf('\n shearing of the flange at the junction with hub = %.2f MPa < 15 MPa.',tau)
printf(' Values are acceptable.')

//Note - Answer in llast part is calculated wrong in the textbook(error in calculation).
