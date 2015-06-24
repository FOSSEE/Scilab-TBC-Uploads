//16.5
clc;
Out_motor=80*735.5;
Input_motor=Out_motor/0.8;
I_alternator_phase=120.64;
I_motor_phase= I_alternator_phase/(3^0.5);
printf("\nCurrent in each motor phase=%.2f A",I_motor_phase)
printf("\nCurrent in each generator phase=%.2f A",I_alternator_phase)
