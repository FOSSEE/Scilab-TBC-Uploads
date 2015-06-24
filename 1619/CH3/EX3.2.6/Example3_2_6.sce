//Example 3.2.6 page 3.15
clc;
clear;

lamda= 0.85*10^-6;
Nint = 0.60;
I= 20*10^-3;
h= 6.625*10^-34;    //plancks const
c= 3*10^8;
e=1.602*10^-19;
Pint = Nint*h*c*I/(e*lamda);
printf("The optical power emitted is %.4f W",Pint);

TF= 0.68;
nx= 3.6;
Pe= Pint*TF/(4*nx^2)*1000000;
printf("\n\nPower emitted in the air %.1f uW",Pe);
Pe=Pe/1000000;
Nep=Pe/Pint*100;
printf("\n\nExternal power efficiency is %.1f %%",Nep);
