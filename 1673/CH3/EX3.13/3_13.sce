//example 3.13
//lagrange's interpolation formula
//page 104
clc;clear;close;
x=[300 304 305 307];
y=[2.4771 2.4829 2.4843 2.4871];
x0=301;
log_301=0;
poly(0,'x');
for i=1:4
    p=y(i);
    for j=1:4
        if i~=j then
            p=p*((x0-x(j) )/( x(i)-x(j)))
        end
    end
    log_301=log_301+p;
    end
disp(log_301,'log_301=');
 