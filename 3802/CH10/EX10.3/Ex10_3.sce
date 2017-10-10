//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_3.sce

clc;
clear;
Pin=40;  // power in kW
Ps=1.5;   // power in kW
Ns=100;             //speed percentage value
N=40;               //speed percentage value
power_loss=0.8;        // power in kW

printf("\n (a)")
rotor_input_power=Pin-Ps;
s=0.04;
rotor_copper_loss=s*rotor_input_power;
mec_power_developed=rotor_input_power-rotor_copper_loss;
printf("\n  Mechanical power developed by the rotor=%2.2f kW",mec_power_developed)
printf("\n  Rotor copper loss=%2.2f kW \n",rotor_copper_loss)

printf("\n (b)")
motor_output_power=mec_power_developed-power_loss;
printf("\n  Output of the motor=%2.2f kW \n",motor_output_power)

printf("\n (c)")
motor_efficiency=(motor_output_power/Pin)*100;
printf("\n  The motor efficiency=%2.1f percentage \n",motor_efficiency)

printf("\n (d)")
new_slip=(Ns-N)/Ns;
total_rotor_copper_loss=new_slip*rotor_input_power;
printf("\n  Total rotor copper loss when speed reduced to 40percentage of synchronous speed=%2.1f kW \n",total_rotor_copper_loss)

printf("\n (e)")
total_rotor_loss=total_rotor_copper_loss+power_loss;
motor_output_power=rotor_input_power-total_rotor_loss;
motor_efficiency=(motor_output_power/Pin)*100;
printf("\n  Efficiency of motor when speed reduced to 40percentage of synchronous speed=%2.1f percentage",motor_efficiency)
