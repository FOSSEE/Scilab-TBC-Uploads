//Chapter 21
//Example 21.1
//Page 507

i=5;
cs=1.25;
ts=0.6;
tv1=400;
tv2=5;
fc=4000;

pup=i*cs;
frc=fc*tv2/tv1;
psm=frc/pup;
ot=3.5*0.6;

printf("Pick up current = %.2f A \n\n", pup);
printf("Fault current in relay coil = %.0f A \n\n", frc);
printf("Plug multiplier setting = %.0f  \n\n", psm);
printf("Corresponding to the plug multiplier setting of %.0f, the time of operation is 3.5 seconds.\n \t Therefore actual relay operating time = %.2f s \n\n", psm, ot);
