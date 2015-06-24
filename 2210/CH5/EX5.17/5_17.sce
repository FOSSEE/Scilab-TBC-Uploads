//Chapter 5, Problem 17
clc
z1=22e3                   //reactance in ohm
c1=10                     //capacitance in picofarad
c2=100                   //capacitance in picofarad

//calculation
z2=z1*(c1/(c1+c2))
printf("tranformed value of reactance = %d Kohm",z2/1000)
