//time required to cover the distance between two stations
//refer fig.12.11
v=(48*1000)/(60*60)  //m/sec
t1=30  //sec
//after application of brakes the vehicle retards from 13.33 m/sec to 0 in t3 sec
t3=13.33  //sec
//Let t2 be the time during which the automobile travels with uniform velocity
//s=s1+s2+s3
s=5200  //m
t2=((5200)-(13.33*30/2)-(13.33*13.33/2))/13.33  //sec
//total time 
t=t1+t2+t3  //sec
printf("Total time taken=%.2f sec",t)
