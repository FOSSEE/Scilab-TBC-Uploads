// exa 5.2 Pg 147
clc;clear;close;

// Given Data
w=400;//mm
t=20;//mm
sigma_t=90;// MPa
tau=60;// MPa
sigma_c=140;// MPa

printf('\n Diameter of rivet, do = ')
d0=6*sqrt(t);//mm (for t>8 mm)
printf('%.2f mm',d0)
d0=29;//mm (standard)
printf('\n Standard diameter of rivet hole, do = %.f mm & corresponding diameter of rivet = 27 mm',d0)
Pt=(w-d0)*t*sigma_t;//N max. tearing strength of plate
Ps=1.75*%pi/4*d0**2*tau;// N (shearing strength of one rivet)
n1=Pt/Ps;// no. of rivets
n=ceil(n1);
printf('\n no. of rivets, n = %.3f. Use n = %.f ',n1,n)
t1=0.75*t;// mm
t2=t1;// mm
printf('\n thickness of inner butt strap, t1 = %.f mm', t1)
printf('\n thickness of outer butt strap, t2 = %.f mm', t2)
// section 1-1 
P1=(w-d0)*t*sigma_t;//N
// section 2-2 
P2=(w-2*d0)*t*sigma_t+1.75*%pi/4*d0**2*tau;//N
// section 3-3 
P3=(w-3*d0)*t*sigma_t+1.75*3*%pi/4*d0**2*tau;//N
// section 4-4
P4=(w-4*d0)*t*sigma_t+1.75*6*%pi/4*d0**2*tau;//N
Ps=10*Ps;// N (shearing stress of all rivets)
Pc=10*d0*t*sigma_c;// N (shearing stress of all rivets)
Pj=P1;// N (strength f joint)
P = w*t*sigma_t;// N (strength of solid plate)
eta=P1/P*100; // % (efficiency of joint)
printf('\n efficiency of joint = %.2f %%', eta)
p1=3*d0+5;// mm (pitch of rivets)
p=100;//mm (adopt for design)
printf('\n pitch of rivets = %.f mm. Use %.f mm',p1,p)
m1=1.5*d0;// mm (margin)
m=50;//mm
w=3*p+2*m;// mm
printf('\n margin,\n m = %.1f mm. Use %.f mm', m1,m)
printf('\n w = %.f mm',w)
dis=2.5*d0;// mm
printf('\n distance between rows = %.1f mm. Use 75 mm',dis)
