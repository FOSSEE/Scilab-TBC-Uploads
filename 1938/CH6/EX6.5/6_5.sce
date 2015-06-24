clc,clear
printf('Example 6.5\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

V_L=6.6*10^3
V_ph=V_L/sqrt(3)
VA=3*10^6
I_FL=VA/(V_L*sqrt(3)) //full load current 
P=8,f=50 //poles and frequency

X_s=complex(0,2.9)//X_s=2.9
delta_dash_mech=%pi/180
delta_dash_elec=delta_dash_mech*(P/2)  //P/2 is pole pairs(and not poles)

//part(i)
E=V_ph
P_SY=delta_dash_elec*E^2/abs(X_s)  //Synchronous Power per phase
P_SY_3ph=P_SY*3 //For 3 phases
printf('(i)   Synchronising power at no load is %.3f kW',P_SY*10^-3)
printf('\n   Total synchronising power at no load is %.2f kW\n',P_SY_3ph*10^-3)

N_s=120*f/P //in rpm
n_s=(N_s)/60 //in rps
T_SY=P_SY_3ph/(2*%pi*n_s)
printf('\nSynchronous torque per mechanical degree of phase displacement is %.2f * 10^3 N-m',T_SY*10^-3)

//part(ii)
phi=acosd(0.85)
I=p2z(I_FL,0)
V=p2z(V_ph,phi)

E=V+I*X_s
//E leads I by phasemag(E). V leads I by phasemag(V)

delta=(%pi/180)* (phasemag(E)-phasemag(V) ) //power angle in radians
P_SY2=abs(E)*abs(V)*cos(delta)*sin(delta_dash_elec)/abs(X_s)

P_SY_total_2=3*P_SY2
//n_s=T_SY/(P_SY/(2*%pi) )       //because T_SY=P_SY/(2*%pi*n_s)
printf('\n\n(ii)Total synchronising power is %.0f kW',P_SY_total_2*10^-3)

T_SY2=P_SY_total_2/(2*%pi*n_s)
printf('\nSynchronising torque is %.2f * 10^3 N-m',T_SY2/1000)
