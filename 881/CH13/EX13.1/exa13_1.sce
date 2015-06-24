clc;
//Example 13.1
//Page No 545



//solution

n1=1.5;
n2=1.36;
t1=30;

disp("From Table, ")

disp(n1,"n1(glass) = ");

disp(n2,"n2(alcohol) = ");

disp("Rearranging equation 13-9 and substituting, we get ");

t=((n1/n2)*sin(%pi/6));

disp(t,"t2 = ");

t3=asin(t);

t2=t3*(180/%pi);

disp(t2,"t2 = ");
