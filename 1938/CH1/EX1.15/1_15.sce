clc,clear
printf('Example 1.15\n\n')

//open circuit condition
I_L=0  //because of open circuit
V_t=127 //terminal voltage
E_g=V_t //because I_L=0

//load condition
V_t=120
R_sh=15,R_a=0.02  //shunt and armature resistance
I_sh1=V_t/R_sh //current through shunt winding in loaded condition

I_L =(E_g-V_t)/R_a  -  I_sh1 //because I_a1=I_L+I_sh1    and    E_g=V_t + I_a1*R_a
printf('Load current is %.0f A',I_L)
