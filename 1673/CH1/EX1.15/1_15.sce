//series apprixamation
//example 1.15
//page 18
clc;clear;close;
x=1/11;
S1=0;
for i=1:2:5
        S1=S1+(x^i/(i))
    end
printf('value of log(1.2) is : %0.8f\n\n',2*S1)
c=0;
for i=1:50
    if (1/11)^i/i<(2*10^-7) then
        c=i;
        break;
       end
end
printf('min no of terms needed to get value wuth same accuracy  is :%d',c)