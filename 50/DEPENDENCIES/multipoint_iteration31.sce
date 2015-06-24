function x=multipoint_iteration31(x,f,fp,R)
    R=3;
    PE=10^-5;
    maxval=10^4;
    for n=1:1:R
        x=x-f(x)/fp(x-(1/2)*(f(x)/fp(x))); 
        if abs(f(x))<=PE then break;
        end
        if (abs(f(x))>maxval) then error('Solution diverges');
            break
        end
     end   
    disp(n," no. of iterations =")
endfunction