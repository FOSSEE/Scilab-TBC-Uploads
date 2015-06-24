clc
//Example 9.4
//Calculate settling time
t=0:0.1:5
ic=2*exp(-t)-4*exp(-t)
plot(t,ic)
xtitle('ic vs t','t in s','ic in A')
//Let ts be the settling time
//From the graph the maximum value is|-2|=2A
//'ts' is the time when ic has decreased to 0.02A
//On solving for 'ts'
ts=-log(0.02/4)
printf("ts=%3.2f s\n",ts)
