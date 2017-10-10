// exa 9.13 Pg 274

clc;clear;close;

// Given Data
W=50;// kN
lift=200;// mm
gc=300;// mm (ground clearance)
pb=16;// MPa
mu=0.14;// coefficient of collar friction

//Screw C-35
Sut=288;// MPa
n=3;// factor of safety for screw
// Nut : phosphor-bronze
sigma_t=100;// MPa
sigma_c=90;// MPa
tau=80;// MPa
n2=3;// factor of safety for nut

sigma_ts=Sut/n;// MPa
sigma_cs=Sut/n;// MPa
tau_s=sigma_ts/2;// MPa
// sigma_cs=4*W/(%pi*dc**2)
dc= sqrt(4*W*10**3/(%pi*sigma_cs));// mm
printf('\n Screw diameter - \n Core diameter, dc = %.2f mm. Use 30 mm',dc)
dc=30;// mm (adopted for design)
p=6;// mm (for normal series square threads)
d=dc+p;//mm
printf('\n outside diameter = %.f mm',d)
dm=dc+p/2;// mm
printf('\n mean diameter = %.1f mm',dm)
t=p/2;// mm
printf('\n thread thickness = %.1f mm',t)

printf('\n Maximum tensile & shear tress in screw -')
sigma_c=4*W*1000/%pi/dc**2;// MPa
alfa=atand(p/(%pi*dm));// degree
fi=atand(mu);// degree
Tf=dm*W*10**3/2*tand(alfa+fi);// where TfByW = Tf/W
tau=16*Tf/(%pi*dc**3);// MPa
sigma12=(1/2)*(sigma_c+sqrt(sigma_c**2+4*tau**2));// MPa
printf('\n Maximum tensile stress = %.1f MPa < %.f MPA. Hence design is safe.',sigma12,sigma_ts)
tau_max=sqrt((sigma_c/2)**2+tau**2);// MPa
printf('\n Maximum shear stress = %.2f MPa < %.f MPA. Hence design is safe.',tau_max,tau_s)

printf('\n Height of nut-')
n=W*10**3/(%pi/4)/pb/(d**2-dc**2);// no. of threads
n= round(n);// no. of threads (rounding)
h=n*p;// mm
printf('\n h=%.f mm',h)

printf('\n Check for stress in screw and nut')
tau_screw=W*10**3/(%pi*n*dc*t);// MPa
printf('\n shear stress in screw = %.2f MPa\',tau_screw)
tau_nut=W*10**3/(%pi*n*d*t);// MPa
printf('\n shear stress in nut = %.2f MPa',tau_nut)
printf('\n These are within permissible limits. Hence design is safe.')

printf('\n Nut collar size-')
// %pi/4*(D1**2-d**2)*sigma_tn=W
D1=sqrt(W*10**3/(%pi/4)/(50)+d**2);// mm
printf('\n Inside diameter of collar = %.2f mm. Use D1=52 mm',D1)
D1=52;//mm (adopted for design)
// %pi/4*(D2**2-D1**2)*sigma_cn=W
D2=sqrt(W*10**3/(%pi/4)/45+D1**2);// mm
printf('\n Outside diameter of collar = %.1f mm. Use D2=65 mm',D2)
D2=65;//mm (adopted for design)

// %pi*D1*tc*tau_cn=W
tau_cn=40;// MPa
tc=W*10**3/(%pi*D1*tau_cn);// mm
printf('\n thickness of nut = %.2f mm. Use tc=8 mm.',tc)
tc=8;// mm (adopted for design)

printf('\n Head Dimensions-')
D3=1.75*d;// mm
printf('\n Diameter of head on top of screw = %.2f mm. use D3=64 mm.',D3)
D3=64;// mm (adopted for design)
D4=D3/4;// mm
printf('\n pin diameter in the cup = %.f mm',D4)

printf('\n Torque required between cup and head-')
Tc=mu*W*10**3/3*((D3**3-D4**3)/(D3**2-D4**2));// N.mm
printf('\n Tc=%.f N.mm (acc. to uniform pressure theory)',Tc)
T=Tf+Tc;// N.mm
printf('\n Total Torque, T=%.f N.mm',T)

F=300;// N (as a normal person can apply 100-300 N)
l=T/F;//mm
printf('\n length of lever = %.f mm. Use 1075 mm',l)

M=F*l;// N.mm
dl=(32*M/%pi/sigma12)**(1/3);// mm
printf('\n Diameter of lever, dl=%.1f mm.',dl)

H=2*dl;// mm
printf('\n Height of head, H=%.f mm',H)

printf('\n Check for screw in buckling-')
L=lift+0.5*h;// mm
K=dc/4;// mm
C=0.25;// spring index
sigma_y=288;// MPa
Ac=%pi/4*dc**2;//mm.sq.
Wcr=Ac*sigma_y*(1-(sigma_y/4/C/%pi**2/(200*10**3))*(L/K)**2)/1000;// kN
printf('\n Buckling or critical load for screw, Wcr = %.f kN > 50kN',Wcr)
printf('\n Hence design is safe.')
