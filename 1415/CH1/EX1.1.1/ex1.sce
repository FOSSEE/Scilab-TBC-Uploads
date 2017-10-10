//Example 1 Page 44
clc
clear
function y=f(x)//defining the fcuntion
y=-x^2+20*x+3;
endfunction

disp('a)')
disp(poly([3 20 -1],'x','c'))//displaying the polynomial
disp('for the year 2004, the value of x = 0')
x=0;
p=f(x);//function calling
mprintf("the sales of ipod in the year 2004 are %d",p);//displaying result
disp('for the year 2005, the value of x = 1')
x=1;
p=f(x);//function calling
mprintf("the sales of ipod in the year 2005 are %d",p);//displaying result
disp('for the year 2006, the value of x = 2')
x=2;
p=f(x);//function calling
mprintf("the sales of ipod in the year 2006 are %d",p);//displaying result
disp('for the year 2007, the value of x = 3')
x=3;
p=f(x);//function calling
mprintf("the sales of ipod in the year 2007 are %d",p);//displaying result
disp('as -1 is not in the domain f(-1) is not defined')

disp('b)')
a=poly(0,'a');//generating polynomial
p=f(a)//function calling
disp(p)
b=poly(0,'b');//generating polynomial
p=f(-b);//function calling
disp(p)

disp('c)')
x=([0 1 2 3])//assigning values to x
y=f(x)////function calling
disp('x=',x)
disp('y=',y)
plot(x,y)//plotting the values on graph
xtitle('Graph f','x','y');
