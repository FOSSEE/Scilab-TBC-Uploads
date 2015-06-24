// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Non ideal effects on the barrier height
//Ex_3//page 312
E=6.8*10^4
T=300
e=1.6*10^-19
eps=13.1*8.85*10^-14
delphi=(e*E/(4*%pi*eps))^0.5
xm=(e/(16*%pi*eps*E))^0.5*(10^8)
printf('Position of maximum barrier height is %fA',xm)