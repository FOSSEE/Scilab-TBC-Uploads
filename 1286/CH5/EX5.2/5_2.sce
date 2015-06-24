clc
//initialisations
t1=327//c
t2=47.6//c
c=30//cal/kg
l=6000//cal/kg
j=4.2//j/cal
//CALCULATIONS
h=c*(t1-t2)+l
v=sqrt(2*j*h)
//results
printf(' velocity of bullet= % 1f m/sec',v)
