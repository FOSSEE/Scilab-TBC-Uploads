function P1=aitkeninterpol (x0,x1,f0,f1)
    x=poly(0,"x");
    P1=(1/(x1-x0))*det([f0 x0-x;f1 x1-x]);
endfunction
    
    
    
    
    
    
    
    
    
    
    
   