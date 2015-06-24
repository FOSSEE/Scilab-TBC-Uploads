
function x=modified_newton(x,f,fp)
    R=100;
    PE=10^-8;
    maxval=10^4;
        
    for n=1:1:R
        x=x-m*f(x)/fp(x); 
        if abs(f(x))<=PE then break
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            abort
            break
        end
    end
    disp(n," no. of iterations =")
endfunction