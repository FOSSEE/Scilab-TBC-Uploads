
clc; funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
//calculation
A=[1,1;1,-1];//matrix
b=[90;0];//matrix
x=linsolve(A,-b);
disp(x(1),"latitude in degrees")
clear()
