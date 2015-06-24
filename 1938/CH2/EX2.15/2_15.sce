clc,clear
printf('Example 2.15\n\n')

shaft_output = 80*746 //coverted to watts
eta= 80/100 //efficiency
V=250
N_1=1200
R_a=0.04,R_sh = 250 //armature and shunt field resistance
power_input = shaft_output/eta
I_L= power_input /V
I_sh= V / R_sh
I_a = I_L - I_sh
E_b1 = V - I_a*R_a

gross_mechanical_power= E_b1*I_a //electrical equivalent of mechanical power developed
stray_losses =  gross_mechanical_power - shaft_output
printf('Mechanical power developed on full load = %.3f kW\n',gross_mechanical_power/1000)

//on no load shaft_output=0 and entire gross power is used to overcome stray losses
Eb0_Ia0= stray_losses
//E_b0 = V - I_a0*R_a  ... solving for I_0
p=[R_a -V Eb0_Ia0]
roots(p)
I_a0=ans(2) //first root is ignored since its too large
I_L0 =I_sh+I_a0 //current drawn from supply
E_b0 = V - I_a0*R_a 

//From speed equation N (prop.) E_b
N_0 = N_1*(E_b0/E_b1)
printf('No load speed and current are %.4f rpm and %.2f A respectively',N_0,I_L0)
