clear    
clc
disp('Exa-2.8');
w1=600;w2=434;  // w1=recorded wavelength;w2=actual wavelength
               // c/w1 = c/w2 *(sqrt(1-u/c)/(1+u/c))
k=w2/w1;
x=(1-k^2)/(1+k^2);         //solving for u/c
printf('The speed of galaxy wrt earth is %.2f c',x);
