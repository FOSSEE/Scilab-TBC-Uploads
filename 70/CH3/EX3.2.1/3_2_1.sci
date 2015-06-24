//page 155
clear;
close;
clc;
b=[1;2;3];
disp(b,'b=');
a=[1;1;1];
disp(a,'a=')
x=(a'*b)/(a'*a)
disp(x*a,'Projection p of b onto the line through a is x^*a=');
disp((a'*b)/(sqrt(a'*a)*sqrt(b'*b)),'cos(thetha)=');
//end