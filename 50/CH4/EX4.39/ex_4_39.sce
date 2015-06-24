// example 4.39
// gram schmidt orthogonalisation

// 1)
 W=1;
 x=poly(0,"x");
    P0=1
    phi0=P0;
      a10=0;
    P1=x-a10*phi0
    phi1=P1;
    
     a20=integrate('x^2','x',-1,1)/integrate('W*1*phi0','x',-1,1);
     
    a21=integrate('(x^3)','x',-1,1)/integrate('(x)^2','x',-1,1);
    
    P2=x^2-a20*x-a21*phi1
    

// 2)
disp(' W=1/(1-x^2)^(1/2)');
 x=poly(0,"x");
    P0=1
    phi0=P0;
      a10=0;
    P1=x-a10*phi0
    phi1=P1;
    
     a20=integrate('x^2/(1-x^2)^(1/2)','x',-1,1)/integrate('1/(1-x^2)^(1/2)','x',-1,1);
     
    a21=0;                         // since x^3 is an odd function;
    
    P2=x^2-a20*x-a21*phi1
    
