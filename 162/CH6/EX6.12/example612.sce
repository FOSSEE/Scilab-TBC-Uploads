//Example 6.12
clc;
function[za]=ztransfer(sequence,n)
    z=poly(0,'z','r')
    za=sequence*(1/z)^n'
endfunction
x=[4,2,-1,0,3,-4];
n1=-2:length(x)-3;
X=ztransfer(x,n1);
disp(X,'X(z)=');
funcprot(0);