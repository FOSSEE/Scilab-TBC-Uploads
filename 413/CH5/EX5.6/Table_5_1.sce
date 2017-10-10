clc
clear
x=1.9;
function a=expsin(y)
    a=(exp(x+y).*sin(x+y)-exp(x).*sin(x))/y 
endfunction
function out=tab5(y)   
out=[y,expsin(y)]
endfunction
y=0.05
for i=0:1:10
disp(tab5(y))
y=y.*0.5
end