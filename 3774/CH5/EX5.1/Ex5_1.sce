// exa 5.1 Pg 142
clc;clear;close;

// Given Data
ps=2.5;// MPa
D=1.5;//m
sigma_t=80;// MPa
tau=60;// MPa
sigma_c=120;// MPa
n=5;// no. of rivets

printf('DESIGNING LONGITUDINAL JOINT - \n')
printf('\n Plate Thickness')
eta_l=80;// % (efficiency)
t = ps*D*1000/2/sigma_t/(eta_l/100)+1;// mm
printf(', t = %.2f mm',t)
t=32;//mm (adopted for design)
printf('\n use t = %d mm',t)
printf('\n Diameter of rivet hole, do = ')
d0=6*sqrt(t);//mm (for t>8 mm)
printf('%.2f mm',d0)
d0=34.5;// suggested for design
printf('\n Use do = %.f mm',d0)
printf('\n Diameter of rivet, d = ')
d=d0-1.5;//mm 
printf('%.2f mm',d)
printf('\n Pitch of rivets, p = ')
Ps=(4*1.875+1)*%pi/4*d0**2*tau;// N
// Putting Pt=Ps where Pt=(p-d0)*t*sigma_t;// N
Pt=Ps;//N
p=Pt/(t*sigma_t)+d0;// N
printf('%.1f mm',p)
C=6;// for 5 no. of rivets
pmax=C*t+40;// mm (as per IBR)
printf('\n as per IBR-\n pitch, pmax = %.f mm',pmax)
p=220;// mm (adopted for design)
printf('\n Use p = %.f mm',p)
pi=p/2;// mm 
printf('\n pitch of rivets in inner row, pi = %.f mm',pi)

//Distance between rows of rivets
dis1=0.2*p+1.115*d0;// mm 
printf('\n distance between outer and adjacent row = %.1f mm',dis1)
dis1=85;//mm (adopted for design)
printf('\n take & use this distance = %.f mm', dis1)
dis2=0.165*p+0.67*d0;// mm 
printf('\n distance between inner row for zig-zag riveting = %.1f mm', dis2)
dis2=60;//mm (adopted for design)
printf('\n take & use this distance = %.f mm', dis2)
printf('\n Thickness of wide butt strap, t= ')
t1=0.75*t;// mm (wide butt strap)
printf(' %.f mm',t1)
t2=0.625*t;// mm (narrow butt strap)
printf('\n Thickness of narrow butt strap, t= %.f mm',t2)
//margin
m=ceil(1.5*d0);// mm
printf('\n margin, m = %.f mm',m)
// Efficiency of joint
Pt=(p-d0)*t*sigma_t;// N
Ps=Ps;// N (shearing resistance of rivets)
Pc=n*d0*t*sigma_c;// N (crushing resistance of rivets)
sigma_com = (p-2*d0)*t*sigma_t+%pi/4*d0**2*tau;// N
printf('\n strength of the joint = %d N',sigma_com)
P=p*t*sigma_t;//N (strength of solid plate)
printf('\n strength of solid plate = %d N',P)
eta_l=sigma_com/P*100;// % (efficiency)
printf('\n Efficiency of joint, eta_l = %.1f %%',eta_l)

printf('\n\n DESIGNING CIRCUMFERENTIAL JOINT- \n')
t=32;// mm
d0=34.5;//mm
d=33;//mm
printf('\n Plate Thickness')
printf(', t = %.2f mm',t)
printf('\n Diameter of rivet hole, do = ')
printf('%.2f mm',d0)
printf('\n Diameter of rivet, d = ')
printf('%.2f mm',d) 
n=(D*1000/d0)**2*(ps/tau);// no. of rivets
printf('\n no. of rivets = %.1f',n)
n=80;// adopted for design
printf('\n take n = %d',n)
// Pitch of rivets
n1=n/2;// no. of rivets per row
pc=%pi*(D*1000+t)/n1;// mm (pitch of rivets)
printf('\n pitch of rivets, pc = %.2f mm\n use pc = %.f mm',pc,pc)
eta_c=(pc-d0)/pc*100;// % (efficiency of joint)
printf('\n Efficiency of joint, eta_c = %.2f %%',eta_c)
dis=0.33*pc+0.67*d0;// mm (distance between rows of rivets)
printf('\n for zig-zag riveting, distance between rows of rivets = %.1f mm. use 65 mm', dis)
m=1.5*d0;// mm (Margin)
printf('\n margin, m = %.f mm',m)
