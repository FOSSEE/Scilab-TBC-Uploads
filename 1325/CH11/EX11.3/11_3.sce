//To find number of teeth on each of the four wheels
clc
//given
d=7//in; central distance
k1=2*7*7//T1+t1/(2*7)=7
k2=2*7*5//T2+t2/(2*5)=7
G=9/1
t1=(-(k1+k2)+((k1+k2)^2+4*(G-1)*(k1*k2))^(1/2))/(2*(G-1))
a=ceil(t1)
b=floor(t1)
T1=k1-a
T2=k2-a
T3=k2-b
G1=T1*T2/(a*a)
G2=T1*T3/(a*b)
dp=a/d
//case b)
tb1=23//let t1 = 23
Tb1=k1-tb1
Gb1=Tb1/tb1
Gb2=G/Gb1
tb2=k2/(Gb2+1)
p=ceil(tb2)
Tb2=k2-p
l=Tb1-1
m=tb1+1
n=Tb2+1
o=p-1
Gb2=l*n/(m*o)
printf("\na) No of teeth = %.f, %.f, %.f, %.f\nG = %.2f\n\nb) No of teeth = %.f, %.f, %.f, %.f\nG = %.2f\n\n",T1,T2,a,b,G2,l,m,n,o,Gb2)
