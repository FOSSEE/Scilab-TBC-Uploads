//Example 3.2, page 71
clc
n=1
n1=1.5
r=-4//in cm
s=10//in cm
f=(n*r)/(n1-n)
f1=(n1*r)/(n1-n)
s_temp=(1/-8)-(1/s)
s1=n1/s_temp
printf("\n The primary focal length is  %d cm",f)
printf("\n The secondary focal length is formed at %d cm",f1)
printf("\n The image distance is %f cm",s1)