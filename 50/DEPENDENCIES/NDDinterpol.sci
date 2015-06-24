function P1=NDDinterpol (x0,x1,f0,f1)
    x=poly(0,"x");
    f01=(f1-f0)/(x1-x0);
    P1=f0+(x-x0)*f01;
endfunction
    
    
    
    
    
    
    
    
    
    
    
   