clc,clear
printf('Example 6.10\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

V_l=6000
V_ph=V_l/sqrt(3)
VA=2000*10^3
I_FL=VA/(V_l*sqrt(3))
X_s=complex(0,6) //synchronous reactance
P=8
f=50

delta_mech=%pi/180 //phase displacemant in degree mechanical 
//phase displacemant in degree electrical
delta_elec=delta_mech*(P/2)  //P/2 is pole pairs(and not poles)

phi=acosd(0.8)
V=p2z(V_ph,phi)
E=V+I_FL*X_s
//E leads I by phasemag(E). V leads I by phasemag(V)

delta=(%pi/180)* (phasemag(E)-phasemag(V) ) //power angle in radians
P_SY=abs(E)*abs(V)*cos(delta)*sin(delta_elec)/abs(X_s) //synchronising power
P_SY_total=3*P_SY //totla synchronising power 
printf('Total synchronising power is %.3f kW',10^-3*P_SY_total)

N_s=120*f/P //in rpm
n_s=(N_s)/60 //in rps
T_SY=P_SY_total/(2*%pi*n_s)
printf('\nSynchronising torque is %.0f N-m',T_SY)
