//Example No. 10_03
//Pg No. 332
clear ;close ;clc ;

time = 1:4
T = [ 70 83 100 124 ]
t = 6
Fx = exp(time/4)
n = length(Fx)
Y = T ;
b = ( n*sum(Fx.*Y) - sum(Fx)*sum(Y) )/( n*sum(Fx.*Fx) - (sum(Fx))^2 )
a = sum(Y)/n - b*sum(Fx)/n
disp(b,'b = ')
disp(a,'a = ')
printf('The relationship between T and t is \n T = %.4G*e^(t/4) + %.4G \n',b,a)
deff('T = T(t)','T = b*exp(t/4) + a ')
T_6 = T(6)

disp(T_6,'The temperature at t = 6 is')