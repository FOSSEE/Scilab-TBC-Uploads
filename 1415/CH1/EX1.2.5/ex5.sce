//Example 5 Page 64
clc
clear
//function for linear model
function y=r1(t)
y=57*t+607
endfunction
//function for quadratic model
function y=r2(t)
    y=-9*t^2+110*t+560
endfunction
//function for exponential model
function y=r3(t)
   y=608*(1.08)^t
endfunction
//function for logistic model
function y=r4(t)
    y=930/(1+0.67*(1.7)^-t)
endfunction

disp('a)')
t=([0 1 2 3 4 5 6])//assigning values of t
y1=r1(t)//function caling r1(t)
disp(t)
disp(y1)//displaying values of y1
y2=r2(t)//function calling r2(t)
disp(t)
disp(y2)//displaying values of y2
y3=r3(t)//function calling r3
disp(t)
disp(y3)//displaying value sof y3
y4=r4(t)//function calling r4
disp(y3)//displaying y4 values
plot(6,1000,t,y1,'red')//plotting linear graph
xtitle('Linear Model','x','y')//given title and other labes
scf//setting current graphic window
plot(6,1000,t,y2,'blue')//plotting qudratic graph
xtitle('quadratic','x','y')//setting labels
scf//setting current graphic window
plot(6,1000,t,y3,'blue')//plotting exponential graph
xtitle('Exponential Model','x','y')//setting labels
scf//setting current graphic window 
plot(6,1000,t,y2,'blue')//plotting logistic graph
xtitle('Logistic Model','x','y')//setting labels

disp('b)')
t=10//assigning value of t
y1=r2(t)//function calling r2
disp(y1,'Quadratic Model for 2010')//displaying result
y2=r4(t)//function calling r4
disp(y2,'Logistic Model for 2010')//displaying result



