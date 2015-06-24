clc
function v=f(t), v=200*sin(377*t), endfunction         //Defining functions
function i=f1(t), i=8*sin(377*t-%pi/6), endfunction
V=200/sqrt(2);              //Assigning values to parameters
I=8/sqrt(2);
P=V*I*cos(%pi/6)
disp("Watts",P,"Active Power");
Q=V*I*sin(%pi/6);
disp("VAR",Q,"Reactive Power");
S=V*I;
disp("VA",S,"Apparent Power");