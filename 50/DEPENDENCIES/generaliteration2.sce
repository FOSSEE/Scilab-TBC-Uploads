
function x=generaliteration2(x,g,gp)
    R=2;
    PE=10^-8;
    maxval=10^4;
    A=[0 0];
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