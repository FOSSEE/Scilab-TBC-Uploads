clc
clear
//input
v=3 //voltage
c1=2.5*10^-6 //capacitance
c2=2.5*10^-6
c3=2.5*10^-6
//calculation
q=v/((1/c1)+(1/c2)+(1/c3))//capacitors in series
q1=c1*v//capacitors in parallel
//output
printf("the pd when capacitors are in series is %3.3e C",q)
printf("\n the pd when capacitors are in parallel is %3.3e C",q1)
