clc,clear
printf('Example 2.35\n\n')

P_out= 100*735.5
V=500
P=4
A=2// due to wave winding
Z=492 //no of conductors
phi=50*10^-3 //flux per pole
eta=92/100 //efficiency
P_in= P_out/eta
R_a=0.1 , R_sh=250 //amature and shunt field resistance

I_L=P_in/V
I_sh = V/ R_sh
I_a = I_L - I_sh
E_b = V - I_a*R_a
N=E_b*60*A/(phi*P*Z)  //because E_b=  phi*P*N*Z/(60*A)

T_sh= P_out/(2*%pi*N/60) //Useful torque
printf('(i)Speed at full load = %.4f rpm',N)
printf('\n(ii)Useful torque = %.2f N-m',T_sh)
printf('\n\nAnswer mismatches due to improper approximation')
