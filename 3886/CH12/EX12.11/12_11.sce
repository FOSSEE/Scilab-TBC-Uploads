//Train B overtakes train A
//refer fig.12.12
//speed of A
v1=7.5  //m/sec
//speed of B
v2=15  //m/sec
//motion of train A
//using equation of motion
t1=7.5/0.15  //sec
//distance travelled in time t
//s=7.5*t-187.5
//Motion of train B
//using equation of motion
t2=15/0.3  //sec
//distance travelled t seconds after train A started
//s=15*t-975
//solving
t=(975-187.5)/(15-7.5)  //sec
s=15*t-975  //m
printf("\nTrain B overtakes train A %.2d sec\ns=%.2d m",t,s)
