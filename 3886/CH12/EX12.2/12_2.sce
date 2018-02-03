//Steel ball shot vertically up
//refer fig.12.6
//For upward motion
au=18  //m/sec
av=0
aa=-9.81  //m/sec^2
//s=h
//let t1 be the time required to reach maximum height
t1=1.83  //sec
h=(18^2)/(2*9.81)  //m
//total height from the ground
ah=25+h  //m
//Downward motion
bu=0
bs=41.51  //m
ba=9.81  //m/sec^2
v2=sqrt(2*9.81*41.51)  //m/sec
t2=28.54/9.81  //m/sec
//total time during which the body is in motion
t=t1+t2  //sec
printf("\nt1=%.2f sec\nh=%.2f m\nv2=%.2f m/sec\nt2=%.2f sec\nt=%.2f sec",t1,h,v2,t2,t)
