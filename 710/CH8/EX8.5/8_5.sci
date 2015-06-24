clc();
clear;

//To measure magnetisation of paramagnetic salt


//(M1*T1)=(M2*T2).Therefore M2=(M1*T1)/T2
M1=2;                 //Initial magnetisation in A/m
T1=305;               //Initial temperature in K
T2=321;
M2=(M1*T1)/T2         //M2 is magnetisation at 321K
printf("Magnetisation at 321 K is %f A/m",M2);