n= 200;
v = 120;
p =0.5;
if(v < (n/2))
    pvalue = 2*cdfbin("PQ", v, n, p,1-p);
else
    pvalue = 2*cdfbin("PQ", n-v, n, p,1-p);
   
end
disp(pvalue, "Pvalue is ");        