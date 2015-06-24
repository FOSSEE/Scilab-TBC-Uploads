function P1=legrangeinterpol (x0,x1,f0,f1)
    x=poly(0,"x");
    L0=(x-x1)/(x0-x1);
    L1=(x-x0)/(x1-x0);
    P1=L0*f0+L1*f1;
endfunction
    
    
    
    
    
    
    
    
    
    
    
   