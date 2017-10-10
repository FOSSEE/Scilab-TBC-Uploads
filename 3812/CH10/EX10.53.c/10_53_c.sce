//example 10_53<c>:
//Find unilateral Z transform
clc;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x=[0,0,1,2,5,4,0,3];
n1=0:length(x)-1;
X=ztransfer(x,n1);
disp(X,'X(z)=');
funcprot(0);
