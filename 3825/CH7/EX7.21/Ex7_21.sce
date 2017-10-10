clc
h1=2775.8
h2=167.456
h3=104.77
h4=146.56
s1=7.5984
s2=0.5721
s3=0.367
s4=0.5049
m3=((h2-h1)*10^4)/(h3-h4)
mprintf("m3=%fkg/h\n",m3)//ans vary due to roundoff error
TO=300
delta=(-10^4*TO*(s2-s1))-(m3*TO*(s4-s3))
mprintf("Net change in availability=%fkJ",delta)//ans vary due to roundoff error
