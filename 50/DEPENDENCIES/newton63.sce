
function x=newton63(x,f,fp,fpp)
    R=100;
    PE=10^-15;
    maxval=10^4;
        
    for n=1:1:R
        x=x-(f(x)*fp(x))/(fp(x)^2-f(x)*fpp(x)); 
        if abs(f(x))<=PE then break
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            abort
            break
        end
    end
    disp(n," no. of iterations =")
endfunction