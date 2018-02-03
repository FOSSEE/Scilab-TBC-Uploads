//Vehicle moving round a curve
r=40  //m
mu=0.4  
//(1) On level road, limiting speed from the consideration of avoiding skidding
v=sqrt(0.4*9.81*40)  //m/sec
//(2) On a road banked to an inclination of 1 in 10
v1=sqrt((9.81*40*(0.4+0.1))/(1-0.4*0.1))  //m/sec
//If lateral forces are not to be experienced
v3=sqrt(0.1*9.81*40)  //m/sec
printf("\nOn level road v=%.3f m/sec\nOn a road banked v=%.3f m/sec\nIf lateral forces are not to be experienced v=%.3f m/sec",v,v1,v3)
