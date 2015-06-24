//Example 2.5.2 pagw 2.26

clc;
clear;
lamda= 2*10^-9;
sigma = 75;
D_mat= 0.03/(3*10^5*2);
sigma_m= 2*1*D_mat;
sigma_m=sigma_m*10^9; //Fornamtting in ns/Km
printf("The Pulse spreading is %d ns/Km",sigma_m);
D_mat_led= 0.025/(3*10^5*1550);
sigma_m_led = 75*1*D_mat_led*10^9; //in ns/Km
printf("\n\nThe Pulse spreading foe LED is  %.2f ns/Km",sigma_m_led);
