clear    
clc
disp('Exa-2.5');
Lo=100*(10^3);  //Lo is converted to Km
u=0.999978;      ////u/c is taken as u since u is represented in terms of c. 
L=Lo*(sqrt(1-u^2)); // from the length contraction formula
printf('Hence the apparent thickness of the Earth''s surface is %.2f metres.',L);
