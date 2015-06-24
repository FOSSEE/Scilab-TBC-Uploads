clc,clear
printf('Example 1.25\n\n')
printf('Note :answer obtained will not match with textbook answer because \nI_L=V_t/R_L\n=310.79/40=7.77 A\nwhile its taken as 8.045 A in textbook')

P=4  //Pole
Z=386 //no of wave connected conductors
A=2  //Wave winding
R_a=1,R_sh=100,R_L=40  //Armature ,shunt field and load resistance
phi=25*10^-3  //flux per pole in weber
N=1000  //speed in rpm

E_g=(phi*P*N*Z)/(60*A)  //generated emf

//Solving following equations for V_t
//E_g=V_t+I_a*R_a
//I_a=(I_L+I_sh)   I_L=V_t/R_L  I_sh=V_t/R_sj
//E_g=V_t(1 + (R_a/R_L) + (R_a/R_sh)
V_t=E_g/(1 + (R_a/R_L) + (R_a/R_sh))

I_L=V_t/R_L // load current
I_sh=V_t/R_sh // current through shunt field resistance

I_a=I_L+I_sh //armature current 
printf('\n\narmature current is  is %.4f A',I_a)

output_power=V_t*I_L
printf('\noutput power is %.3f W',output_power)
