clear    
clc
disp('Exa-2.7');
v1=0.6; u=0.8; c=1; // all the values are measured in terms of c hence c=1
v= (v1+u)/(1+(v1*u/c^2));
printf('The speed of missile as measured by an observer on earth is %.2f c.',v);