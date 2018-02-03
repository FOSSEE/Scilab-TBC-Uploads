//Crossing of balls
//refer fig. 12.8
//1.for motion of first ball
au=0
//1s=30-h
aa=9.81  //m/sec^2
//2.for motion of second ball
bu=15  //m/sec
//s=h
ba=-9.81  //m/sec^2
//30-h=0*t+(9.81*t^2)/2  ...(1)
//h=15*t-(9.81*t^2)/2  ...(2)
//solving (1) and (2)
t=30/15
h=15*2-(9.81*2^2)/2  //m
//at t=2
//downward velocity of first ball
v1=0+9.81*2  //m/sec
//Upward velocity of second ball
v2=15-9.81*2  //m/sec
//relative velocity vr
vr=v1-(-v2)  //m/sec
printf("\nt=%.2f sec\nh=%.2f m\nvr=%.2f m/sec",t,h,vr)

