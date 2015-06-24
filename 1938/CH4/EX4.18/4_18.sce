clc,clear
printf('Example 4.18\n\n')

V_L=125
V_ph=V_L
VA=600*10^3
I_L=VA/(sqrt(3)*V_L)     // Because VA=sqrt(3)* V_L * I_L
I_ph=I_L/(sqrt(3))

//After Reconnection
V_ph=125
V_L=V_ph*sqrt(3)
printf('New rating in volts is %.3f V',V_L)
//Winding Impedances remain the same
I_ph=1600
I_L=I_ph

printf('\nNew rating in amperes is %.0f A',I_L)
kVA=sqrt(3)*V_L*I_L*(10^-3)
printf('\nNew rating in kVA is %.0f kVA',kVA)
