clc
clear

function a=eco4(x)
    a=1.000043+x+x.*x.*0.499219+x.*x.*x/6+x.*x.*x.*x.*0.043750
endfunction
function a=eco5(x)
    a=1.000043+x+x.*x.*0.499219+x.*x.*x/6+x.*x.*x.*x.*0.043750+x.*x.*x.*x.*x/120
endfunction
function a=mac4(x)
    a=1+x+x.*x/2+x.*x.*x/6+x.*x.*x.*x/24
endfunction
function a=mac5(x)
    a=1+x+x.*x/2+x.*x.*x/6+x.*x.*x.*x/24+x.*x.*x.*x.*x/120
endfunction
function a=mac6(x)
    a=1+x+x.*x/2+x.*x.*x/6+x.*x.*x.*x/24+x.*x.*x.*x.*x/120+x.*x.*x.*x.*x.*x/720
endfunction
function out=tab4(y)   
out=[y,exp(y),mac6(y),mac5(y),mac4(y),eco5(y),eco4(y)]

endfunction
for y=0:0.2:1
disp(tab4(y))
end