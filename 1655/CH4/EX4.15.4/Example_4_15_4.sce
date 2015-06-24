// Example 4.15.4  page 4.38

clc;
clear;

tau01=10;     //pulse broadning ns/mm
L1=0.1;     //length in kilometer
tau02=20;    //pulse broadning ns/m
L2=1;    //length in kilometer
tau03=2000;  //pulse broadning ns/m
L3=2;       //length in kilometer

tau1=10d-9/1d-6;
tau1=tau1*L1;
Bopt1=1/(2*tau1);     //computing optical bandwidth
tau2=20d-9/1d-3;
tau2=tau2*L2;
Bopt2=1/(2*tau2);     //computing optical bandwidth
Bopt2=Bopt2*10^-3;
tau3=2000d-9/1d-3;
tau3=tau3*L3;
Bopt3=1/(2*tau3);     //computing optical bandwidth


printf("\nWhen tau is %d ns/mm, over length %.1f km, optical bandwidth for RZ is %d MHz and for NRZ is %d MHz.",tau01,L1,Bopt1,Bopt1/2 );
printf("\nWhen tau is %d ns/m, over length %d km, optical bandwidth for RZ is %.1f KHz and for NRZ is %.1f KHz.",tau02,L2,Bopt2,Bopt2/2 );
printf("\nWhen tau is %d ns/m, over length %d km, optical bandwidth for RZ is %d Mz and for NRZ is %.1f Hz.",tau03,L3,Bopt3,Bopt3/2 );

printf("\n NOTE - printing errors in the book.\nIn first two cases tau is not multiplied by 2");

//Calculation error because, In first two cases tau is not multiplied by 2
//answers-
//When tau is 10 ns/mm, over length 0.1 km, optical bandwidth for RZ is 1000 MHz and for NRZ is 500 MHz.
//When tau is 20 ns/m, over length 1 km, optical bandwidth for RZ is 50 KHz and for NRZ is 25 KHz.
