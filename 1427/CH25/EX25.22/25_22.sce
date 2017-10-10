//ques-25.22
//Calculating collision number for hydrogen
clc
Crms=1.83*10^5;//rms velocity (in cm/s)
mfp=1.78*10^-5;//mean free path (in cm)
Cavg=0.9213*Crms;//average velocity
C_N=Cavg/mfp;//collison number
printf("The collosion number of hydrogen is %.0f /s.",C_N);
