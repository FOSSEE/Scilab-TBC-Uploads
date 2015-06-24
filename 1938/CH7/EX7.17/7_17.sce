clc,clear
printf('Example 7.17\n\n')

V_L=400,V_ph=V_L/sqrt(3)
E_bph=V_ph
P=4,f=50//Pole and frequency
delta_mech=4*(%pi/180) //mechanical angle in degrees by which rotor is behind
delta_elec= delta_mech *(P/2) //delta_mech convertd to electrical degrees
Z_s=complex(0,2) //synchronous impedance

//referring to phasor diagram
BC=  E_bph*sin(delta_elec)
AB=  E_bph
OA=  V_ph

AC=  sqrt(AB^2-BC^2)
OC=  OA-AC
phi=atan(OC/BC)
OB=sqrt(OC^2 + BC^2)
I_a=OB/abs(Z_s)

printf('Armature current drawn by the motor is %.4f A',I_a)
