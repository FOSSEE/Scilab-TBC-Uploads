//Example 4.5, page 81
clc
pole=24
Ns=245//in rpm
N=(120*50)/pole//synchronous speed in rpm
f=(N-Ns)/N
p=110//in kw
T=(p*1000*60)/(2*%pi*Ns)
v1=440/sqrt(3)//in v
ws=(2*%pi*250)/60
s=0.02
R=0.03125//in ohm
x=sqrt(((3*R*v1**2)/(T*ws*s))-(R/s)**2)//by rearranging formula
printf("\n Stator resistance per phase is %f ohm ",x)
//calculating original resistance

//Example 4.1, Page 72
clc;
p1=poly([72.78, -3235, 3190], 'x', 'c')//Polynomial equation
disp('Part a')
disp('The value of original resistance is')
x=roots(p1)
disp(x)

//Taking r=0.99108
r=(0.99108-R)/1.25**2

printf("\n The value of resistance to be added is  %f ohm ",r)