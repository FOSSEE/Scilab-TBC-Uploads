
//1/(sqrt(5)-sqrt(2))
clear;
clc;
close;
//rationalising the denominator
function[denom1]=inputs(a,b)
     denom1=(sqrt(a)+sqrt(b))*(sqrt(a)-sqrt(b))
endfunction
[denom1]=inputs(5,2);
denom1=string(denom1);
numer1=string('(sqrt(5)+sqrt(2))');
val=string(numer1+'/'+denom1)
mprintf("i.e.,")
val=evstr(val)
  
