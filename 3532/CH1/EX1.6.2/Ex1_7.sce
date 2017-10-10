clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 1.6.2\n')
//given data
//Z=r*e^(i*theta) is represented as Z=r*cos(theta) + i*r*sin(theta)= x +i*y
//where r*cos(theta)=x and r*sin(theta)=y
//case 1
//V=5*e^(j*0.10)
r1=5
theta1=0.1
x1=r1*cos(theta1)
y1=r1*sin(theta1)
v1=complex(x1,y1)
//case 2
//V=17*e^(-j*3.74)
r2=17
theta2=-3.74
x2=r2*cos(theta2)
y2=r2*sin(theta2)
v2=complex(x2,y2)
//output
mprintf('case(i):V=5*e^(j*0.10) is represented as')
disp(v1)
mprintf('\ncase(ii):V=17*e^(-j*3.74) is represented as')
disp(v2)
mprintf('\nNOTE:complex number is represented as x+y*i in SCILAB')
