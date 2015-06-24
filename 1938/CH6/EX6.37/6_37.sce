clc,clear
printf('Example 6.37\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

P_out=3000*10^3
V_L=6.6*10^3,V_ph=V_L/sqrt(3)
phi=acos(0.8)
I_L=p2z(P_out/(sqrt(3)*V_L*cos(phi)),-1*(180/%pi)*phi)

P_out1=P_out/2
I_L1=150  //given
phi_L1=acos(    P_out1/(sqrt(3)*V_L*I_L1)  )
I_L1=p2z(I_L1,-1*(180/%pi)*phi_L1)

I_L2=I_L-I_L1
pf_2=cosd(phasemag(I_L2))
Z_1=complex(0.5,10)
I_1=I_L1
E_1=V_ph + I_1*Z_1
delta_1=(%pi/180)*phasemag(E_1)    //load angle of alternator 1
E_1L=sqrt(3)*E_1

Z_2=complex(0.4,12)
I_2=I_L2
E_2=V_ph + I_2*Z_2
delta_2=(%pi/180)*phasemag(E_2)    //load angle of alternator 2

printf('Part(i)\nCurrents are %.0f A at %.1f degrees and %.1f A at %.1f degrees\nTotal current is %.0f at %.2f\n',abs(I_L1),phasemag(I_L1),abs(I_L2),phasemag(I_L2),abs(I_L),phasemag(I_L))
printf('Part(ii)\nPower factor is %.4f and lagging\n',cos(phi_L1))
printf('Part(iii)\nemf are %.2f V at %.2f degrees and %.4f V at %.0f degrees\n',abs(E_1),phasemag(E_1),abs(E_2),phasemag(E_2))
printf('Part(iv)\nPower angles are %.2f degrees and %.0f degrees \n',(180/%pi)*delta_1,(180/%pi)*delta_2)
