clc
m = 2.5 // module in mm
phi = 1.2 // common ratio
n = 150 // speed in rev/min. of driving shaft
n1 = 70 // speed in rev/min. of driven shaft
n2 = (phi)^1*n1 // speed in rev/min. of driven shaft
n3 = (phi)^2*n1 // speed in rev/min. of driven shaft
n4 = (phi)^3*n1 // speed in rev/min. of driven shaft
T1=poly(0,'T1')
t1=n1/n*T1
T1=roots(t1+T1-80)
t1=horner(t1,T1)
T2=poly(0,'T2')
t2=n2/n*T2
T2=roots(t2+T2-80)
t2=horner(t2,T2)
T3=poly(0,'T3') 
t3=n3/n*T3
T3=roots(t3+T3-80)
t3=horner(t3,T3)
T4=poly(0,'T4')
t4=n4/n*T4
T4=roots(t4+T4-80)
t4=horner(t4,T4)
t1 = floor(t1) // number of teeth on driving shaft
T1 = ceil(T1) // number of teeth on driven shaft
t2 = ceil(t2) // number of teeth on driving shaft
T2 = floor(T2) // number of teeth on driven shaft
t3 = floor(t3) // number of teeth on driving shaft
T3 = ceil(T3) // number of teeth on driven shaft
t4 = ceil(t4) // number of teeth on driving shaft
T4 = floor(T4) // number of teeth on driven shaft
 // running speeds
n1 = n*t1/T1
n2 = n*t2/T2
n3 = n*t3/T3
n4 = n*t4/T4
printf("\n Number of teeth on driver and driven are :- \n t1 = %d ,T1 = %d\n t2 = %d ,T2 = %d \n t3 = %d ,T3 = %d \n t4 = %d ,T4 = %d ",t1,T1,t2,T2,t3,T3,t4,T4)
printf("\n The actual running speed of driven shaft will be : \n n1 = %0.2f rev/min\n n2 = %0.2f rev/min \n n3 = %0.2f rev/min \n n4 = %0.2f rev/min",n1,n2,n3,n4)
// Answer of n3 is given wrong in book
// Answer vary due to round off error
