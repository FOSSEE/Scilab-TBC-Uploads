//clear//
//Caption:PN sequence generation
//Example9.1 and Figure9.1: Maximum-length sequence generator
//Program to generate Maximum Length Pseudo Noise Sequence
//Period of PN Sequence N = 7
clc;
//Assign Initial value for PN generator
x0= 1;
x1= 0;
x2 =0;
x3 =0;
N = input('Enter the period of the signal')
for i =1:N
  x3 =x2;
  x2 =x1;
  x1 = x0;
  x0 =xor(x1,x3);
  disp(i,'The PN sequence at step')
  x = [x1 x2 x3];
  disp(x,'x=')
end
m = [7,8,9,10,11,12,13,17,19];
N = 2^m-1;
disp('Table 9.1 Range of PN Sequence lengths')
disp('_________________________________________________________')
disp('Length of shift register (m)')
disp(m)
disp('PN sequence Length (N)')
disp(N)
disp('_________________________________________________________')
//RESULTEnter the period of the signal 7
//  The PN sequence at step   1.  
//  x=       1.    0.    0.  
//  The PN sequence at step   2.  
//  x=       1.    1.    0.  
//  The PN sequence at step   3.  
//  x=       1.    1.    1.  
//  The PN sequence at step   4.  
//  x=       0.    1.    1.  
//  The PN sequence at step   5.  
//  x=       1.    0.    1.  
//  The PN sequence at step   6.  
//  x=       0.    1.    0.  
//  The PN sequence at step   7.  
//  x=       0.    0.    1.   
