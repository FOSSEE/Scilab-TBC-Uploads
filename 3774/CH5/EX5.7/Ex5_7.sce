// exa 5.7 Pg 155
clc;clear;close;

// Given Data
t=6;//mm
sigma_t=220;// MPa
tau=100;// MPa
sigma_c=150;// MPa
n=2;// no. of rivets / pitch length
//Ps=n*%pi/4**d0**2*tau;// shearing strength of rivets
//Pc=2*d0*t*sigma_c;// Crushing strength of rivets
d0=2*t*sigma_c/(n*%pi/4*tau);// mm (equating Ps=Pc)
printf('Diameter of rivets, d0 = %.2f mm. Take d0=13.5 mm & d=12 mm',d0)
d0=13.5;//mm
d=12;//mm
//Pt=(p-d0)*t*sigma_t;// tearing strength
// equating Pt=Ps
//p= n*%pi/4**d0**2*tau/(t*sigma_t)+d0;//mm
p= n*%pi/4*d0**2*tau/(t*sigma_t)+d0
printf('\n Distance between rows of rivet = %.1f mm = %.f mm',p,p)
p=floor(p);//mm
pb=0.6*p;//mm (back pitch)
printf('\n back pitch = %.f mm',pb)
Pt=(p-d0)*t*sigma_t;//  N (tearing strength)
printf('\n tearing strength = %.f N',Pt)
Ps=n*%pi/4*d0**2*tau;// N ( shearing strength)
printf('\n shearing strength = %.f N',Ps)
Pc=2*d0*t*sigma_c;//N (Crushing strength of rivets)
printf('\n crushing strength = %.f N',Pc)
joint_strength = Pc;// N
printf('\n joint strength = %.f N',joint_strength)
P=p*t*sigma_t;//N (strength of solid plate)
printf('\n strength of solid plate = %.f N',P)
eta = joint_strength/P*100;// % (efficiency)
printf('\n efficiency of joint = %.1f %%', eta)
