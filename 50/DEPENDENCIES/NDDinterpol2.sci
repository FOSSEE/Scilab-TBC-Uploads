function P2=NDDinterpol2 (x,f)
    X=poly(0,"X");
    f01=(f(2)-f(1))/(x(2)-x(1));
    f13=(f(3)-f(2))/(x(3)-x(2));
    f013=(f13-f01)/(x(3)-x(1));
    P2=f(1)+(X-x(1))*f01+(X-x(1))*(X-x(2))*f013;
endfunction
    
    
    
    
    
    
    
    
    
    
    
   