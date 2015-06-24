// Example 3.2.3 page 3.12

clc;
clear;
Tr = 60*10^-9;  //radiative recombination time
Tnr= 90*10^-9;  //non radiative recomb time
I= 40*10^-3;    //current
t = Tr*Tnr/(Tr+Tnr);    //total recomb time
t=t*10^9;   //Converting in nano secs...
printf("The total carrier recombination life time is %d ns",t);
t=t/10^9;
h= 6.625*10^-34;    //plancks const
c= 3*10^8;
q=1.602*10^-19;
lamda= 0.87*10^-6;
Pint=(t/Tr)*((h*c*I)/(q*lamda));
Pint=Pint*1000; //converting inmW...
printf("\n\nThe Internal optical power is %.2f mW",Pint);
