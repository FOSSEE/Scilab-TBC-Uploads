                //Example 8.19
                clc
//Logical operator precedences

i=int(7);
f=5.5;
c='w';

z= i + f <= 10;
disp(z, "(i + f <= 10)");

z= i >=6 & c == 'w';
disp(z, "(i >=6 & c == w)");

z= c ~= 'p' | i+ f <=10;
disp(z, "(c ~= p | i+ f <=10)");
