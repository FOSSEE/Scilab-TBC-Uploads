clear
clc
disp('Exa-13.2')
A=197; m=30*10^-3;phi=3*10^12;    //given values and various constants taken in suitable units
Ar=99*10^-24; Na=6.023*10^23
R=(phi*Na*Ar*m/A);        //rate or production of gold
t=2.7*24*60         // time of decay
Act=R*(0.693/t);     //activity /sec
ActCi=Act/(2.7*10^-4);     // in terms of curie(Ci)
printf('The activity is found out to be %.2e/sec i.e %.2e Ci',Act,ActCi);
