clc
//initialisation
s1=1//m/sec
s2=2//m/sec
s3=3//m/sec
s4=4//m/sec
s5=5//m/sec
n1=4
n2=2
n3=8
n4=6
n5=5
//CALCULATIONS
u=(n1*s1+n2*s2+n3*s3+n4*s4+n5*s5)/(n1+n2+n3+n4+n5)
v=sqrt((n1*s1*s1+n2*s2*s2+n3*s3*s3+n4*s4*s4+n5*s5*s5)/(n1+n2+n3+n4+n5))
//results
printf(' mean speed of molecules= % 1f m/sec',u)
printf(' \nrms speeed of molecules= % 1f m/sec',v)
