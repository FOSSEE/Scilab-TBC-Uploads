clc
clear
//input
t=2.14*10^6*365*24*60*60//half time
//calculation
l=0.693/t//decay constant
t1=1.1097/l//decay law
t2=t1/(365*60*60*24)//time in yrs
//output
printf("time taken is %3.3e yrs",t2)
