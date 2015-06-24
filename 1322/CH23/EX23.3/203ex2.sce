
//(sqrt(5)-1)/(sqrt(5)+1)
clear;
close;
clc;
//rationalising the denominator
function[denom1]=inputs(a,b)
     denom1=(sqrt(a)+sqrt(b))*(sqrt(a)-sqrt(b));
endfunction
[denom1]=inputs(5,1);
denom1=string(denom1);
numer1=string('(6-2*sqrt(5))');
val=string(numer1+'/'+denom1)
mprintf("i.e.,")
val=evstr(val)
