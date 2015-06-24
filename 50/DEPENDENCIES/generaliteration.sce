
function x=generaliteration(x,g,gp)
    R=5;
    PE=10^-8;
    maxval=10^4;
    k=gp(x);
    if abs(k)>1 then error('function chosen does not converge')
        abort;
    end
    for n=1:1:R
        x=g(x);
        disp(x); 
        if abs(g(x))<=PE then break
        end
        if (abs(g(x))>maxval) then error('Solution diverges');
            abort
            break
        end
    end
    disp(n," no. of iterations =")
endfunction