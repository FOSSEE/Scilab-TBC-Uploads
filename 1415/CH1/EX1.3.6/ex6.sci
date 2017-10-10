//Example 6 Page 86
clc
clear

function s=S(t)//function for s(t)
    s=54*t+20
endfunction
t=[0 0.5 1 1.5 2]//values of t given in question
disp(t,'time(h)')//displaying the t values
s=S(t);//function calling
disp(s,'marker(mi)')//displaying the s values
plot(t,s,'blue')//plotting the graph
xtitle('','Time(hours)','Location(miles)')//naming the axes
