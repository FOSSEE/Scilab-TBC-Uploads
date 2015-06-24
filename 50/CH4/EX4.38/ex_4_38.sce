// example 4.38
// gram schmidt orthogonalisation

W=1;
 x=poly(0,"x");
    P0=1;
    phi0=P0;
      a10=integrate('W*x*phi0','x',0,1)/integrate('W*1*phi0','x',0,1)
    P1=x-a10*phi0
    phi1=P1;
    
      a20=integrate('W*x^2*phi0','x',0,1)/integrate('W*1*phi0','x',0,1)
     
    a21=integrate('(x^2)*(x-1/2)','x',0,1)/integrate('(x-1/2)^2','x',0,1)
    
    P2=x^2-a20*x-a21*phi1
    
// since ,I= intgral [x^(1/2)-c0*P0-c1*P1-c2*P2]^2 inthe range [0,1]

// hence partially derivating I 

c0=integrate('x^(1/2)','x',0,1)/integrate('1','x',0,1)   
c1=integrate('(x^(1/2))*(x-(1/2))','x',0,1)/integrate('(x-(1/2))^2','x',0,1)
c1=integrate('(x^(1/2))*(x^2-4*x/3+1/2)','x',0,1)/integrate('(x^2-4*x/3+1/2)^2','x',0,1)


