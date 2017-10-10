// exa 5.4 Pg 151
clc;clear;close;

// Given Data
D=0.75;//m
ps=1.55;// N/mm.sq
eta_l=0.75;// efficiency
sigma_t=90;// MPa
sigma_c=140;// MPa
tau=56;// MPa
n=2;// no. of rivets

printf('DESIGNING LONGITUDINAL JOINT - \n')
printf('\n Plate Thickness')
t = ps*D*1000/2/sigma_t/eta_l+1;// mm
printf(', t = %.2f mm',t)
t=ceil(t);//mm (adopted for design)
printf('\n use t = %d mm',t)

printf('\n Diameter of rivet hole, do = ')
d0=6*sqrt(t);//mm (for t>8 mm)
printf('%.2f mm',d0)
d0=19.5;// suggested for design
printf('\n Use do = %.1f mm',d0)
printf('\n Diameter of rivet, d = ')
d=d0-1.5;//mm 
printf('%.2f mm',d)

printf('\n Pitch of rivets, p = ')
Ps=(2*1.875)*%pi/4*d0**2*tau;// N
// Putting Pt=Ps where Pt=(p-d0)*t*sigma_t;// N
Pt=Ps;//N
p=Pt/(t*sigma_t)+d0;// N
printf('%.2f mm',p)
C=3.5;// for 2 no. of rivets
pmax=C*t+40;// mm (as per IBR)
printf('\n as per IBR-\n pitch, pmax = %.f mm',pmax)
p=75;// mm (adopted for design)
printf('\n Use p = %.f mm',p)

//Distance between rows of rivets
dis=0.33*p+0.67*d0;// mm 
printf('\n distance between rows of rivets = %.1f mm',dis)
dis=40;//mm (adopted for design)
printf('\n take & use this distance = %.f mm', dis)

printf('\n Thickness of butt strap, t= ')
t1=0.625*t;// mm
printf(' %.2f mm',t1)
t1=7;// mm (adopted for design)
printf('\n Use thickness = %.f mm',t1)

//margin
m=ceil(1.5*d0);// mm
printf('\n margin, m = %.f mm',m)

// Efficiency of joint
Pt=(p-d0)*t*sigma_t;// N
Ps=Ps;// N (shearing resistance of rivets)
Pc=n*d0*t*sigma_c;// N (crushing resistance of rivets)
sigma_com = (p-2*d0)*t*sigma_t+%pi/4*d0**2*tau;// N
printf('\n strength of the joint = %d N',Pt)
P=p*t*sigma_t;//N (strength of solid plate)
printf('\n strength of solid plate = %d N',P)
eta_l=Pt/P*100;// % (efficiency)
printf('\n Efficiency of joint, eta_l = %.2f %% = 75 %% as given',eta_l)

