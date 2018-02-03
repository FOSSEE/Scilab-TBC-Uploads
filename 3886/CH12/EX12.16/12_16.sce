//body moving along straight line
//refer fig. 12.16
//a=2-3*t
//v=2*t-(3/2)*(t^2)+C1
//C1 is constant of integration
//v=20  //m/sec
//t=5  //sec
//thus
C1=47.5
//s=47.5*t+t^2-0.5*t^3+C2
//s=85 m when t=10 sec thus
C2=10
a=2-3*0  //m/sec^2
v=47.5  //m/sec
as=10  //m
//let the time when velocity becomes zero be t, thus
t=6.33  //sec
//Corresponding distance from origin
s=10+47.5*6.33+6.33^2-0.5*6.33^3  
printf("\na=%.2f m/sec^2\nv=%.2f m/sec\ns=%.2f m\nt=%.2f sec\nDistance from origin\ns=%.3f",a,v,as,t,s)


