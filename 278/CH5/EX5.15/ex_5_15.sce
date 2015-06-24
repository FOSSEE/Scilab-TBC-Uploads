//detrmin max principasl stress and max shear stress at centre of shaft bearing
clc
//solution
//given
//refer fig 5.18
W=15000//N
d=80//mm
y=140//mm
x=120//mm
pi=3.14
M=W*x//N-mm
T=W*y//N-mm
Z=(pi/32)*d^3//mm^3
f1=M/Z//N/mm^2//stress due to bending
f2=16*T/(pi*d^3)//N/mm^2//stress due torsion
Fm=(f1/2)+(0.5*sqrt(f1^2+4*f2^2))//Max stress
Fs=0.5*(sqrt(f1^2+4*f2^2))//max shear stress
printf("the max prin stress is,%f N/mm^2\n",Fm)
printf("the max shear stress is ,%f N/mm^2",Fs)


