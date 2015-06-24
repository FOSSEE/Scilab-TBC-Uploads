//Example 14.2
clear;
clc
h=poly([2,4,5,3,1],'s','coeff');
r=routh_t(h)
//Since there is no change in sign in the first column, there are no roots having positive real parts, and the system is stable.
y=coeff(h);
n=length(y);
c=0;
for i=1:n
if (r(i,1)<0)
c=c+1;
end 
end
if(c>=1)
printf("system is unstable")
else ("system is stable")
end