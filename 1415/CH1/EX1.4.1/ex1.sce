//Example 1 Page 96
clc
clear
function y1=Y1(t)//function for y=0.5t+8
    y1=0.5*t+8
endfunction

function y2=Y2(t)//function for y=0.25+9
    y2=0.25*t+9
endfunction

t=[0 2 4 6 8 10 12 14]//t values as given in question
disp(t,'Year:')//displaying t values
y=[9 9 10 11 11 12 13 13]//y values as given in question
disp(y,'observed:')//displaying y values
y1=Y1(t)//function calling
disp(y1,'Predicted:')//printing predicted values
disp(y-y1,'Residual:')//printing residual values
disp((y-y1)^2,'Residual square')//printing residual square values

t=[0 2 4 6 8 10 12 14]//t values as given in question
disp(t,'Year:')//displaying t values
y=[9 9 10 11 11 12 13 13]//y values as given in question
disp(y,'observed:')//dispalying observed values
y2=Y2(t)//function valling
disp(y2,'Predicted:')//printing predicted values
disp(y-y2,'Residual:')//printing residual values
disp((y-y2)^2,'Residual square')//printing residual square values


plot(t,y1)//plotting graph between t and y
xtitle('y=0.5t+8','t','y')//naming the axes
scf;//setting the current graphic window
plot(t,y2)//plotting the graph between t and y
xtitle('y=0.25t+9','t','y')//naming the axes



