clc
clear
function a=pade(x)
    a=(x+7*x.*x.*x/9 +64*x.*x.*x.*x.*x/945)/(1+10*x.*x/9 +5*x.*x.*x.*x/21)    
endfunction
function a=mac(x)
    a=x-x.*x.*x/3+x.*x.*x.*x.*x/5-x.*x.*x.*x.*x.*x.*x/7+x.*x.*x.*x.*x.*x.*x.*x.*x/9
endfunction
function out=tab4(y)   
out=[y,atan(y),pade(y),atan(y)-pade(y),mac(y),atan(y)-mac(y)]
endfunction
for y=0.2:0.2:1
disp(tab4(y))
end