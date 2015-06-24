//Chapter 2, Problem 12
clc
funcprot(0)
R=23                                //resistance in ohm
G=4*10^-3                           //conductance in siemens
L=125*10^-6                         //inductance in henry
C=48*10^-9                          //capacitance in farad

//list of frequencies in hertz
f1=100
f2=500
f3=15000
f4=5*10^6
f5=10*10^6

//calculation of characteristic impedance by declaring the function
function [c,d,e,f]=myfct(u,v,x,y,z)
  a=u+%i*2*%pi*z*v
  b=x+%i*2*%pi*z*y
  m=sqrt(a*b)
  n=sqrt(a/b)
  c=sqrt(real(m)^2+imag(m)^2)
  d=atan(imag(m),real(m))
  e=sqrt(real(n)^2+imag(n)^2)
  f=atan(imag(n),real(n))
endfunction

[y1,z1,x1,v1]=myfct(R,L,G,C,f1)
[y2,z2,x2,v2]=myfct(R,L,G,C,f2)
[y3,z3,x3,v3]=myfct(R,L,G,C,f3)
[y4,z4,x4,v4]=myfct(R,L,G,C,f4)
[y5,z5,x5,v5]=myfct(R,L,G,C,f5)

printf("(a)for 100 Hz \n\tPropagation constant is \n\t\t= %f (magnitude)\n\t\t= %f (angle)\n\n\tCharacteristic impedance Z0 is \n\t\t= %f ohm(magnitude)\n\t\t= %f (angle)\n\n",y1,z1,x1,v1)
printf("(b)for 500 Hz \n\tPropagation constant is \n\t\t= %f (magnitude)\n\t\t= %f (angle)\n\n\tCharacteristic impedance Z0 is \n\t\t= %f ohm(magnitude)\n\t\t= %f (angle)\n\n",y2,z2,x2,v2)
printf("(c)for 15 KHz \n\tPropagation constant is \n\t\t= %f (magnitude)\n\t\t= %f (angle)\n\n\tCharacteristic impedance Z0 is \n\t\t= %f ohm(magnitude)\n\t\t= %f (angle)\n\n",y3,z3,x3,v3)
printf("(d)for 5 MHz \n\tPropagation constant is \n\t\t= %f (magnitude)\n\t\t= %f (angle)\n\n\tCharacteristic impedance Z0 is \n\t\t= %f ohm(magnitude)\n\t\t= %f (angle)\n\n",y4,z4,x4,v4)
printf("(e)for 10 MHz \n\tPropagation constant is \n\t\t= %f (magnitude)\n\t\t= %f (angle)\n\n\tCharacteristic impedance Z0 is \n\t\t= %f ohm(magnitude)\n\t\t= %f (angle)\n\n",y5,z5,x5,v5)
