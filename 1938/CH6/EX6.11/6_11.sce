clc,clear
printf('Example 6.11\n\n')

//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

V_l=3300
V_ph=V_l/sqrt(3)
VA=3*10^6
I_FL=VA/(V_l*sqrt(3))
IX_s=(25/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL) //synchronous reactance
N_s=1000 //in rpm
P=6
f=50

delta_dash_mech=%pi/180
delta_dash_elec=delta_dash_mech*(P/2)  //P/2 is pole pairs(and not poles)

I=I_FL
phi=acosd(0.8)
V=p2z(V_ph,phi)
E=V+I*X_s
//E leads I by phasemag(E). V leads I by phasemag(V)

delta=(%pi/180)* (phasemag(E)-phasemag(V) ) //power angle in radians
P_SY=abs(E)*abs(V)*cos(delta)*sin(delta_dash_elec)/abs(X_s) //Synchronising power per phase
printf('Synchronising power is %.3f kW',10^-3*P_SY)
P_SY_total=3*P_SY //Total synchronising power

N_s=120*f/P //in rpm
n_s=(N_s)/60 //in rps
T_SY=P_SY_total/(2*%pi*n_s)
printf('\nSynchronising torque is %.0f N-m',T_SY)

printf('\n\nAnswer mismatches due to approximation')
