clc

T=300//K
M=3.64//Armstrong
Nx=(7.54*10^14)//cm^-2
P1=1//Pa
t1=(Nx*sqrt(M*T))/(2.64*10^20*P1)
disp(t1,"t1 at 1Pa in ms is= ")    //textbook ans is wrong
P2=10^-4//Pa
t2=(Nx*sqrt(M*T))/(2.64*10^20*P2)
disp(t2,"t2 at 10^-4Pa in s is= ")    //textbook ans is wrong
P3=10^-8//Pa
t3=(Nx*sqrt(M*T))/(2.64*10^20*P3)
disp(t3,"t3 at 10^-8Pa in hr is= ")    //textbook ans is wrong
