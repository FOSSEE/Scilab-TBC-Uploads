// Example 1.9, page no-56
clear
clc

Rl_ind=250
Rl_rec=250
load_connected= Rl_ind+Rl_rec
load_allowable=600
max_load_controller=load_allowable-load_connected
printf("(a)\nThe max load to the controller = %d ohms",max_load_controller)

op_cont=600
total=Rl_ind+Rl_rec+load_allowable
extra_load=total-op_cont
printf("\n(b)\nExtra Load = %d ohms",extra_load)

printf("\nAdditional Power Supply voltage required=10 V")

printf("\nMinimum Power Supply Voltage=34 ")
