// Exa 1.26
format('v',7);
clc;
clear;
close;
// Given data
// omega_t= Ao*omega_b
// 2*%pi*f_t = Ao*2*%pi*f_b
// f_t= Ao*f_b
// Part (i)
Ao1= 10^5;
f_b1= 10^2;// in Hz
f_t1= Ao1*f_b1;// in Hz
// Part (ii)
Ao2= 10^6;
f_t2= 10^6;// in Hz
f_b2= f_t2/Ao2;// in Hz
// Part (iii)
f_b3= 10^3;// in Hz
f_t3= 10^8;// in Hz
Ao3= f_t3/f_b3;
// Part (iv)
f_b4= 10^-1;// in Hz
f_t4= 10^6;// in Hz
Ao4= f_t4/f_b4;
// Part (v)
Ao5= 2*10^5;
f_b5= 10;// in Hz
f_t5= Ao5*f_b5;// in Hz
disp(f_t1,"The value of f_t1 in Hz is : ")
disp(f_b2,"The value of f_b2 in Hz is : ")
disp(Ao3,"The value of Ao3 is : ")
disp(Ao4,"The value of Ao4 is : ")
disp(f_t5,"The value of f_t5 in Hz is : ")
