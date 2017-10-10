// exa 9.15 Pg 279

clc;clear;close;

// Given Data
W=100;// kN
lift=260;// mm
pb=15;// N/mm.sq.
mu=0.15;// coefficient of thread friction
mu_c=0.20;// coefficient of collar friction
//Screw
Suts=800;// N/mm.sq.
sigma_ss=340;// N/mm.sq.
ns=4;// factor of safety
//Nut
Sutn=552;// N/mm.sq.
sigma_sn=260;// N/mm.sq.
nn=5;// factor of safety

sigma_ts=Suts/ns;// N/mm.sq.
sigma_cs=Suts/ns;// N/mm.sq.
tau_s=sigma_ss/ns;// N/mm.sq.
sigma_tn=Sutn/nn;// N/mm.sq.
sigma_cn=Sutn/nn;// N/mm.sq.
tau_n=sigma_sn/nn;// N/mm.sq.

//sigma_cs=4*W/(%pi*dc**2)
dc=sqrt(4*W*10**3/(%pi*sigma_cs));// mm
printf('\n Screw Diameter-\n Core diameter of screw, dc=%.2f mm. Use dc=33 mm',dc)
dc=33;// mm
p=7;// mm (for normal series square threads)
d=dc+p;//mm
printf('\n outside diameter = %.f mm',d)
dm=dc+p/2;// mm
printf('\n mean diameter = %.1f mm',dm)
t=p/2;// mm
printf('\n thread thickness = %.1f mm',t)

printf('\n Maximum stresses in screw -')
sigma_c=4*W*1000/%pi/dc**2;// MPa
alfa=atand(p/(%pi*dm));// degree
fi=atand(mu);// degree
Tf=dm*W*10**3/2*tand(alfa+fi);// where TfByW = Tf/W
tau=16*Tf/(%pi*dc**3);// MPa
sigma12=(1/2)*(sigma_c+sqrt(sigma_c**2+4*tau**2));// MPa
printf('\n Maximum tensile stress = %.1f N/mm.sq. < %.f N/mm.sq.. Hence design is safe.',sigma12,sigma_ts)
tau_max=sqrt((sigma_c/2)**2+tau**2);// MPa
printf('\n Maximum shear stress = %.2f N/mm.sq. < %.f N/mm.sq.. Hence design is safe.',tau_max,tau_s)

printf('\n Height of nut-')
n=W*10**3/(%pi/4)/pb/(d**2-dc**2);// no. of threads
n= ceil(n);// no. of threads (rounding)
h=n*p;// mm
printf('\n h=%.f mm. Use 120 mm.',h)
h=120;// mm

printf('\n Check for stress in screw and nut')
tau_screw=W*10**3/(%pi*n*dc*t);// MPa
printf('\n shear stress in screw = %.2f MPa < %.f MPa',tau_screw,tau_s)
tau_nut=W*10**3/(%pi*n*d*t);// MPa
printf('\n shear stress in nut = %.2f MPa < %.f MPa',tau_nut,tau_n)
printf('\n These are within permissible limits. Hence design is safe.')

printf('\n Nut collar size-')
// %pi/4*(D1**2-d**2)*sigma_tn=W
D1=sqrt(W*10**3/(%pi/4)/sigma_tn+d**2);// mm
printf('\n Inside diameter of collar = %.2f mm. Use D1=55 mm',D1)
D1=55;//mm (adopted for design)
// %pi/4*(D2**2-D1**2)*sigma_cn=W
D2=sqrt(W*10**3/(%pi/4)/sigma_cn+D1**2);// mm
printf('\n Outside diameter of collar = %.2f mm. Use D2=70 mm',D2)
D2=70;//mm (adopted for design)

// %pi*D1*tc*tau_n=W
tc=W*10**3/(%pi*D1*tau_n);// mm
printf('\n thickness of nut = %.f mm. Use tc=15 mm.',tc)
tc=15;// mm (adopted for design)

printf('\n Head Dimensions-')
D3=1.75*d;// mm
printf('\n Diameter of head on top of screw = %.2f mm.',D3)
D4=D3/4;// mm
printf('\n pin diameter in the cup = %.1f mm. Use 20 mm.',D4)
D4=20;// mm (adopted for design)

printf('\n Torque required between cup and head-')
Tc=mu_c*W*10**3/3*((D3**3-D4**3)/(D3**2-D4**2));// N.mm
printf('\n Tc=%.f N.mm (acc. to uniform pressure theory)',Tc)
T=Tf+Tc;// N.mm
printf('\n Total Torque, T=%.f N.mm',T)

F=300;// N (as a normal person can apply 100-300 N)
l=T/F;//mm
printf('\n length of lever = %.f mm or %.2f m',l,l/1000)

M=F*l;// N.mm
sigma_b=100;// N/mm.sq. (assumed)
dl=(32*M/%pi/sigma_b)**(1/3);// mm
printf('\n Diameter of lever, dl=%.1f mm. Use dl=45 mm.',dl)
dl=45;// mm (adopted for design)

H=2*dl;// mm
printf('\n Height of head, H=%.f mm',H)

printf('\n Check for screw in buckling-')
L=lift+0.5*h;// mm
K=dc/4;// mm
C=0.25;// spring index
sigma_y=200;// MPa
Ac=%pi/4*dc**2;//mm.sq.
Wcr=Ac*sigma_y*(1-(sigma_y/4/C/%pi**2/(200*10**3))*(L/K)**2)/1000;// kN
printf('\n Buckling or critical load for screw, Wcr = %.f kN > 100kN',Wcr)

To=W*10**3*dm/2*tand(alfa);// N.mm
eta=To/T*100;// %
printf('\n Efficiency of screw = %.2f %%',eta)

printf('\n Body dimensions-')
D5=1.5*D2;// mm
t2=2*tc;// mm
t3=0.25*d;//mm
D6=2.25*D2;// mm
printf('\n Diameter of body at top, D5 = %.f mm', D5)
printf('\n Thickness of base, t2 = %.f mm', t2)
printf('\n Thickness of body, t3 = %.f mm', t3)
printf('\n Inside diameter of bottom, D6 = %.1f mm. Use D6=160 mm.', D6)
D6=160;// mm (adopted for design)
D7=1.75*D6;// mm
hb=lift+h+100;// mm
printf('\n Outside diameter at the bottom, D7 = %.2f mm.', D7)
printf('\n Height of body = %.f mm.',hb)
