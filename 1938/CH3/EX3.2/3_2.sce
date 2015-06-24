clc,clear
printf('Example 3.2\n\n')

//no load
I_noload=2.5 //No load current
V=440
R_a=1.2,R_sh=550//resistance of armature and shunt field windings
no_load_input=V*I_noload

I_sh=V/R_sh
I_a_noload=I_noload-I_sh
no_load_armature_copper=(I_a_noload^2)*R_a
constant_losses=no_load_input-no_load_armature_copper

//full load
I_fullload=32
I_a_fullload=I_fullload-I_sh
full_load_armature_coppe=(I_a_fullload^2)*R_a
total_losses=full_load_armature_coppe+constant_losses
full_load_motor_input=V*I_fullload
full_load_motor_output=full_load_motor_input-total_losses
efficiency_at_full_load=full_load_motor_output*100/full_load_motor_input

printf('Full load motor output is %.2f W\nEfficiency of motor at full-load is %.2f percent',full_load_motor_output,efficiency_at_full_load)
