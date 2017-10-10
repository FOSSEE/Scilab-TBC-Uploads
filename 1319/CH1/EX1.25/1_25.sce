//To find current in the 600 turn exciting coil

clc;
clear;

N=600;
mr=800;
m0=4*%pi*(10^-7);

phi=100*(10^-6);// Flux in air gap

l1=10*(10^-2);
l2=18*(10^-2);
lg=2*(10^-3); // Air gap length
Ac=(6.25)*(10^-4);// Central limb area
As=3*(10^-4);// Side limb area

Ra=lg/(m0*Ac);
Ri=l1/(mr*m0*Ac);

R=l2/(m0*mr*As);

Rt=Ra+Ri; // Total reluctacne of the central limb

AT1=Rt*phi; // MMF or Ampere turns for the central limb
AT2=R*phi/2; // MMF, Two identical limbs hence flux becomes half and only one limb is considered

AT=AT1+AT2;//Total MMF

I=AT/N; // Current in the 600 turns

printf('The current flowing in the 600 turns exciting coil = %g A\n',I)
