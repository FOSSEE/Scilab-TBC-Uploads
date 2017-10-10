clc
clear

function a=che(x)
    a=0.9946+0.9973.*x+x.*x.*0.543+x.*x.*x.*0.1772
    endfunction
function a=mac(x)
    a=1+x+x.*x/2+x.*x.*x/6
endfunction
function out=tab(y)   
out=[y,exp(y),che(y),exp(y)-che(y),mac(y),exp(y)-mac(y)]

endfunction
for y=-1:0.2:1
disp(tab(y))
end