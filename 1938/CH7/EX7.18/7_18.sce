clc,clear
printf('Example 7.18\n\n')

V_L=400,V_ph=V_L/sqrt(3)
input_power=5472
Z_s=complex(0,10)  //synchronous impedance
I_L_cosphi=input_power/(sqrt(3)*V_L) //product of I_L & cos(phi)
BC=10*I_L_cosphi
AB=V_ph
OA=V_ph
//from Triangle ABC in phasor diagram
AC = sqrt(AB^2- BC^2)
OC = OA - AC

//from Triangle OCB 
OB=sqrt( OC^2+ BC^2 )
E_Rph = OB
I_L=E_Rph/abs(Z_s)

phi=atan(OC/BC)
pf=cos(phi)
delta=atan(BC/AC)  //load angle
printf('Power factor is %.4f lagging\n',pf)
printf('Load angle is %.0f degrees\n',delta*(180/%pi))
printf('Armature current is %.3f A',I_L)
