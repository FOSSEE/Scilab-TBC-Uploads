clc
//initialistions
t1=80//c
t2=50//c
t3=60//c
t4=30//c
t=20
e=5
//CALCULATIONS
k=2.3026*log((t1-t)/(t2-t))/e
T=2.3026*log((t3-t)/(t4-t))/k
//results
printf(' time it will take = % 1f min',T)
