function [y]=sinc_new(x)
i=find(x==0);                                                          
x(i)= 1;      // From LS: don't need this is /0 warning is off        
y = sin(%pi*x)./(%pi*x);                                              
y(i) = 1;
endfunction
