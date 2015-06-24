//to find resistance added to ckt

clc;
n_s=1500;
w_s=2*%pi*n_s/60;
n=1250;
s=1-n/n_s;
//Im=(1/3)*(0.3+.25/s+j*1.83)ohm/ph
T=150;
V=440;
//T=(3/w_s)*(V^2*(R_2t/s))/((.1+(R_2t/s))^2+(X1+X2)^2);
//after solving R_2t^2-1.34*R_2t+0.093=0
function [x]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
    if(x1>x2)
        x=x1;
    else
        x=x2;
    end
endfunction
[x]=quad(1,-1.34,0.093);
Rext=x-0.083;disp(Rext,'external resitance(ohm)');