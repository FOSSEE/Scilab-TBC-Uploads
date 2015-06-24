// from fig. 22.18A
clc
// Three gear ratios between input and intermediate shaft
nmax = 1400 // maximum speed in rev/min.
i1 = 1/1
i2 = 1/1.26
i3 = 1/(1.26)^2
// The two ratios between intermediate and output shaft
i4 = 1/1
i5 = 1/(1.26)^3
// number of teeth for input and intermediate shaft
t1 = 27/27
t2 = 24/30
t3 = 21/33
//  number of teeth for output and intermediate shaft
t4 = 34/34
t5 = 20/48
// output speeds in rev./min
n1 = t3*t5*nmax
n2 = t2*t5*nmax
n3 = t1*t5*nmax
n4 = t3*t4*nmax
n5 = t2*t4*nmax
n6 = t1*t4*nmax
printf("\n Three gear ratios between input and intermediate shaft i1 = %d i2 = %0.2f i3 = %0.3f \n  The two ratios between intermediate and output shaft i4 = %d i5 = %0.3f \n number of teeth for each pair between input and intermediate shaft t1 = 27/27 ,t2 = 24/30 , t3 = 21/33 \n number of teeth for each pair between output and intermediate shaft = t4 = 34/34 ,t5 = 20/48 \n Output speeds \n n1 = %d  rev/min , n2 = %d rev/min , n3 = %d rev/min \n n4 = %d rev/min, n5 = %d rev/min , n6 = %d rev/min" ,i1 , i2 , i3 , i4 , i5 , n1 , n2, n3,n4,n5,n6)
// Answer vary due to round off error
