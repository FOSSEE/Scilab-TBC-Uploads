
clear; 
clc;
close;
n=poly(0,'n');
p1=1/(n-2);
p2=1/(n-3);
p=p1+p2;
q=2/n;
//given p=q
  z1=numer(p)*denom(q);
  z2=numer(q)*denom(p);
//As,z1=z2. cancel the terms common on both sides
  a=z1-z2;
 n=roots(a)
    
