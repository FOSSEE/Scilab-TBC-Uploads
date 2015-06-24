function [x]=regulafalsi(a,b,f)
    N=100;
    PE=10^-5;
    for n=2:1:N
        x=a-(a-b)*f(a)/(f(a)-f(b));
        if abs(f(x))<=PE then break;
        elseif (f(a)*f(x)<0) then b=x;
            else a=x;
        end
    end
    disp(n," no. of iterations =")
endfunction