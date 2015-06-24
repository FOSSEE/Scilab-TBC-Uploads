clc,clear
printf('Example 6.6\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

V_l=10*10^3
V_ph=V_l/sqrt(3)
R_a=0.4
Z=complex(R_a,6)
I_a=p2z(300,-acosd(0.8))
E=V_ph+I_a*Z

phi=acos(0.8)
alternator_op_ph=V_ph*abs(I_a)*cos(phi) //Power delivered to infinite bus per phase

//Power deliered to the altrernator = Power delivewred to bus bar +  I^2*R losses in armature
alternator_power= alternator_op_ph+ abs(I_a)^2*R_a

//this power developed remains constant.change pf to 1 and calculate corresponding armature current
//alternator_power=V_ph*I_a1*cos(phi1)+I_a1^2*0.4
//solve the quadratic equation  0.4 I_a1^2+5773.50 I_a1- 1421640 =0
I_a1=(-1*V_ph+sqrt(V_ph^2-4*R_a*-1*alternator_power))/(2*R_a)

//also as follows 
E1=V_ph+I_a1*Z
decrease=100*(abs(E)-abs(E1))/abs(E)
printf('Percentage decrease in induced e.m.f is %.1f percent',decrease)
