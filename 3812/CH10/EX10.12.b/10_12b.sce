//example 10.12(b) 
//determine Z transform 
clc;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x=[1,2,6,-2,0,3];
n1=-2:length(x)-3;
X=ztransfer(x,n1);
disp(X,'X(z)=');
funcprot(0);
