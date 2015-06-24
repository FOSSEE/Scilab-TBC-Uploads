clc,clear
printf('Example 6.18\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

load_total=1600*10^3
pf=1/sqrt(2)  //lag
V_L=6600
I_L=p2z(load_total/(sqrt(3)*V_L*pf),-1*acosd(pf)) 
I_1=p2z(90,-1*acosd(0.8))
I_2=I_L-I_1
phi=abs(phasemag(I_2))
I_a=abs(I_2)
R_a=1.05,X_s=5 //resistance and synchronous reactance per phase
V_ph=V_L/sqrt(3)
E_ph=sqrt(  (V_ph*cos(phi)+I_a*R_a )^2 + ( V_ph*sin(phi)+I_a*X_s )^2        )
E_line=sqrt(3)*E_ph

printf('Excitation of second alternator is %.2f V ',E_line)
printf('\n The corresponding field current from the graph is about 310 A\n\n')
printf('Note: The answer obtained will differ from textbook answer because of higher degree \nof accuracy while storing I_2 and the improper rounding off of I_2 in the textbook')
