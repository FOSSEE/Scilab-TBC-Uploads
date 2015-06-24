function x=newton4(x,f,fp)
    R=4;
    PE=10^-15;
    maxval=10^4;
    for n=1:1:R
        if fp(x)==0 then disp("select another initial root x0")
        end
        x=x-f(x)/fp(x); 
        if abs(f(x))<=PE then break
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            abort
            break
        end
    end
    disp(n," no. of iterations =")
endfunction