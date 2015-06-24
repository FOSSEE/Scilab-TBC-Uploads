//Example 5.30
//Maximum Error in Interpolation
//Page no. 169
clc;close;clear;
s=1;
for i=0:6
    s=s*((5*%pi)/24-i*%pi/12)
end
s=s/factorial(7)
printf('Maximum Error = %g',s)