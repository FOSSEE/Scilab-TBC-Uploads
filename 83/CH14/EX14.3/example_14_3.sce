//Chapter 14
//Example 14.3
//page 538
//To estimate the values of the random variables x1 and x2 using WLSE
clear;clc;
i=0; x=1;y=8.5
printf('---------------------------------------\n');
printf('iteration\t\tx(l)\n');
printf('---------------------------------------\n');
printf('\t%d\t\t%0.3f\n',i,x);
for i=1:1:10
    k=(1/3)*x^-2      //expression for the value of k has been printed wrongly in the textbook
    x=x+(k)*(y-x^3);
    printf('\t%d\t\t%0.3f\n',i,x);

end
