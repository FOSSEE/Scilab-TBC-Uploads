//4.3
clc;
Vs=240;
emf_800=Vs-20*0.5;
emf_600=230*600/800;
Vav=emf_600+20*0.5;
Duty_cycle=Vav/Vs;
printf("Duty cycle when motor develop the rated torque = %.4f ", Duty_cycle)
//when motor develop half of the rated torque
Vav=emf_600+10*0.5;
Duty_cycle=Vav/Vs;
printf("\nDuty cycle when motor develop half of the rated torque = %.4f ", Duty_cycle)