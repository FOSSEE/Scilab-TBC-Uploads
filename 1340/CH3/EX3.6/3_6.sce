clc;
A =[0 1 0;0 0 1;-1 -2 -3];//A matrix
B =[10;0;0];//B matrix
C = [1 0 0];//C matrix
ss = syslin('c',A,B,C,0);//defining a linear system
ssprint(ss); 
tf = ss2tf(ss);//conversion from steady state to transfer function
disp(tf,"Transfer Function :");