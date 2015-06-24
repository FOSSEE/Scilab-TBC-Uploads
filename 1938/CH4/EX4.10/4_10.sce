clc,clear
printf('Example 4.10\n\n')

Slots=180
Pole=12
Ns=600 //Synchronous speen in rpm
f=Pole*Ns/120 //frequency
phi=0.05 //flux per pole in weber

//Part(i)
//Average EMF in a conductor=2*f*phi
rms_value_1=1.11*2*f*phi //rms value of emf in a conductor
printf('(i)r.m.s value of e.m.f in a conductor is %.2f V ',rms_value_1)

//part(ii)
//Average EMF in a turn=4*f*phi
rms_value_2=1.11*4*f*phi//r.m.s value of e.m.f in a turn
printf('\n(ii)r.m.s value of e.m.f in a turn is %.2f V ',rms_value_2)

//part(iii)
conductors_per_coilside=10/2 
rms_value_3=rms_value_2*conductors_per_coilside  //r.m.s value of e.m.f in a coil
printf('\n(iii)r.m.s value of e.m.f in a coil is %.1f V ',rms_value_3)

//part(iv)
conductors_per_slot=10
Z=conductors_per_slot * Slots  //total number of conductors
Z_ph=Z/3    //conductors per phase
T_ph=Z_ph/2 //turns per phase
n=Slots/Pole  //slots per pole
m=n/3        //slots per pole per phase 
beeta=180/n   //slot angle

K_d=sind(m*beeta/2) /(m*sind(beeta/2)),K_c=1  //distribution & coil-span factor
E_ph=rms_value_2*T_ph*K_d*K_c   //induced emf
printf('\n(iv)per phase induced e.m.f is %.1f V ',E_ph)
