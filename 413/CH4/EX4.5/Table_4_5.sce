clc
clear
function a=rat(x)
    a=(1.0018+0.6727*x +0.1598*x.*x)/(1-0.3263*x)    
endfunction
function a=che(x)
    a=0.9946+0.9973.*x+x.*x.*0.543+x.*x.*x.*0.1772
    endfunction
function out=tab4(y)   
out=[y,exp(y),che(y),exp(y)-che(y), rat(y),exp(y)-rat(y)]
endfunction
for y=-1:0.2:1
disp(tab4(y)')
end