// this program is exclusively coded to perform one iteration of aitken method,

function x0aa=aitken(x0,x1,x2,g)
x0a=x0-(x1-x0)^2/(x2-2*x1+x0);
x1a=g(x0a);
x2a=g(x1a);
x0aa=x0a-(x1a-x0a)^2/(x2a-2*x1a+x0a);

endfunction
