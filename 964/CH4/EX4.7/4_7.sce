clc;
clear;
function y=f(x)
    y=tan(x)
endfunction
x1bar=(%pi/2)+0.1*(%pi/2);
x2bar=(%pi/2)+0.01*(%pi/2);
//computing condition number for x1bar
condnum1=x1bar*derivative(f,x1bar)/f(x1bar);
disp(condnum1,"is:",x1bar,"The condition number of function for x=")
if abs(condnum1)>1 then disp(x1bar,"Function is ill-conditioned for x=")
end
//computing condition number for x2bar
condnum2=x2bar*derivative(f,x2bar)/f(x2bar);
disp(condnum2,"is:",x2bar,"The condition number of function for x=")
if abs(condnum2)>1 then disp(x2bar,"Function is ill-conditioned for x=")
end