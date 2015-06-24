clc,clear
printf('Example 6.41\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

P_out=1500*10^3
V_L=3.3*10^3
phi=acos(0.8)
I_L=p2z(P_out/(sqrt(3)*V_L*cos(phi)),-1*acosd(0.8))

I_L1_magnitude=150  //given
P_out1=(3*10^6)/2 //because load is EQUALLY shared between 2 alternators
pf_L1=P_out1/(sqrt(3)*2*V_L*I_L1_magnitude)  //operating pf of alternator 1
phi1=acosd(pf_L1)
I_L1=p2z(I_L1_magnitude,-1*phi1)
I_L2=I_L-I_L1   //because I_L=I_L1 + I_L2
pf_L2=cosd(phasemag(I_L2))

V_ph=6.6*10^3/sqrt(3)
Z_1=complex(0.5,10)
I_1=I_L1
E_1= V_ph + I_1*Z_1
delta_1=phasemag(E_1)  //load angle of alternator 1
I_2=I_L2

Z_2=complex(0.4,12)
E_2= V_ph + I_2*Z_2
delta_2=phasemag(E_2)  //load angle of alternator 1

printf('for machine 1\ncurrent is %.0f A at %.2f degrees\nPower factor of %.4f lag\ninduced emf of %.2f V\nload angle of %.2f degrees',abs(I_L1),phasemag(I_L1),pf_L1,abs(E_1),delta_1)
printf('\n\nfor machine 2\ncurrent is %.1f A at %.1f degrees\nPower factor of %.4f lag\ninduced emf of %.2f V\nload angle of %.0f degrees',abs(I_L2),phasemag(I_L2),pf_L2,abs(E_2),delta_2)
