clear all; clc;
disp("To use figure 10.21 we need the dimensional power specific speed. So the shaft power has to be estimated from figure 10.9 where the non dimensional omegas is needed.")

Ve=5
Hl=0.7

H=80
Q=63
Es=0.97
N=400
V3=25
Dh3=2
rh3=1/12
g=32.2

omega=N*%pi/30
omega_s=omega*(Q^0.5)/((g*H)^0.75)
printf(" The value of omegas is %0.2f",omega_s)

disp("We have efficiency=0.95")
E=0.95
rho=1.9378
Ps=E*rho*g*Q*H/550//conversion factor =1/550
printf(" The value of Ps %0.2f hp",Ps)

Nsp=N*(Ps^0.5)/(80^1.25)
printf("\nThe value of Nsp is equal to %0.2f rpm(hp^0.5)/ft^1.25",Nsp)

disp("From figure 10.21, we obtain sigma approximately equal to 0.1 or NSPHavail/H is greater than or equal to 0.1")
disp("NSPHavail =Ha-Z+Hl+Ve^2/(2*g)) and NSPH avail is greater than or equal to 8 ft.")
disp("At T=70 degrees farenheit we have the value of Ha equal to")
Ha=14.7*144/62.4
printf(" %0.2f ft.",Ha)
Hv=0.363*144/62.4
printf("\n The value of Hv is equal to %0.2f ft",Hv)
K=(Ve^2)/(2*g)
NPSHavail=8
printf("\n The value of (Ve^2)/(2*g) is equal to %0.2f ft",K)
//In the book the value of Zmax is directly stated
//I have used the given formualae and substiuted the values in it
//let NPSHavail=8
//then from the given formula we can find out the value of Zmax

NPSH_avail=8
H_vr=0.84//rounded off value
Kr=0.39//rounded off value
H_ar=33.9//rounded off value
Z =H_ar-NPSH_avail+Hl+Kr-H_vr//Kr= rounded off value of (Ve^2)/(2*g)
printf("\n The value of Zmax is equal to %0.1f ft",Z)























