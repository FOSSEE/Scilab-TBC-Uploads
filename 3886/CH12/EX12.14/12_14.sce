//motion of particle
//s=t^3-3*t^2+2*t+5
//v=ds/dt=3*t^2-6*t+2
//a=6*t-6
//after 4 seconds
v=3*4*4-6*4+2  //m/sec
a=6*4-6  //m/sec^2
//minimum velocity Vmin by using maxima and minima principle  
Vmin=-1  //m/sec
//let at time t the velocity be zero,then
t1=1.577  //sec
t2=0.423  //sec
printf("\nv=%.2f m/sec\na=%.2f m/sec^2\nMinimum velocity=%.2f m/sec\nVelocity is zero at t=%.2f sec and %.2f sec",v,a,Vmin,t1,t2)
