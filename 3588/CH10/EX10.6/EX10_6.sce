//Clearing console
clc
clear

//Intializing variables
t = 5
p = 7.83*10^-6
x0 = -1
x1 = 1

//Calculating elements of mass matrix
m11 = (150*p*t*integrate('(1-r)^2','r',x0,x1)*integrate('(1-s)^2','s',x0,x1))/16
m12 = (150*p*t*integrate('1-r^2','r',x0,x1)*integrate('(1-s)^2','s',x0,x1))/16
m22 = (150*p*t*integrate('(1+r)^2','r',x0,x1)*integrate('(1-s)^2','s',x0,x1))/16
m13 = (150*p*t*integrate('1-r^2','r',x0,x1)*integrate('1-s^2','s',x0,x1))/16
m14 = (150*p*t*integrate('(1-r)^2','r',x0,x1)*integrate('1-s^2','s',x0,x1))/16
m23 = (150*p*t*integrate('(1+r)^2','r',x0,x1)*integrate('1-s^2','s',x0,x1))/16
m24 = (150*p*t*integrate('1-r^2','r',x0,x1)*integrate('1-s^2','s',x0,x1))/16
m33 = (150*p*t*integrate('(1+r)^2','r',x0,x1)*integrate('(1+s)^2','s',x0,x1))/16
m34 = (150*p*t*integrate('1-r^2','r',x0,x1)*integrate('(1+s)^2','s',x0,x1))/16
m44 = (150*p*t*integrate('(1-r)^2','r',x0,x1)*integrate('(1+s)^2','s',x0,x1))/16

//Constructing Mass matrix
m(1,1:8) = [m11 m12 m13 m14 0 0 0 0]
m(2,1:8) = [m12 m22 m23 m24 0 0 0 0]
m(3,1:8) = [m13 m23 m33 m34 0 0 0 0]
m(4,1:8) = [m14 m24 m34 m44 0 0 0 0]
m(5,1:8) = [0 0 0 0 m11 m12 m13 m14]
m(6,1:8) = [0 0 0 0 m12 m22 m23 m24]
m(7,1:8) = [0 0 0 0 m13 m23 m33 m34]
m(8,1:8) = [0 0 0 0 m14 m24 m34 m44]

printf('\nResults\n')
printf('\nMass matrix m in (kg)')
disp(m)
