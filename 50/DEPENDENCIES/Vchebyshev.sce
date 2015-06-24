function x=chebyshev(x,f,fp,fpp)
    R=100;
    PE=10^-5;
    maxval=10^4;
        if fp(x)==0 then disp("select another initial root x0");
            break;
        end
    for n=1:1:R
        x=x-f(x)/fp(x)-(1/2)*(f(x)/fp(x))^2 *(fpp(x)/fp(x));
        if abs(f(x))<=PE then break;
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            abort;
            break
        end
    end
    disp(n," no. of iterations =")
endfunction