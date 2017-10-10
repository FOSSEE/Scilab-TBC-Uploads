Syms t,s
disp('By KVL the current equation is')
disp('V/L*(1/s*(s+R/L))')
//by partial fraction method the expression is split as k0/s+k1/s+(R/L) 
//The values of k0=V/R and k1=-V/R
//taking inverse laplace
disp('inverse laplace is')
z=ilt('(V/R*s^0)/s-(V/R*s^0)/(s+(R/L))',s,t)
disp(z,"z(t)=")
