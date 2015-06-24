//Example 7.42b
clc;
function[za]=ztransfer(sequence,n)
    z=poly(0,'z','r')
    za=sequence*(1/z)^n'
endfunction
x=[1,2,3,4,5,0,7];
n1=-3:length(x)-4;
X=ztransfer(x,n1);
funcprot(0);