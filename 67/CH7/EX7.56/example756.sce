//Example 7.56
//Determine the input x[n] if h[n]=[1,2,3]and y[n]=[1,1,2,-1,3]
clc;
clear;
function[za]=ztransfer(sequence,n)
    z=poly(0,'z','r')
    za=sequence*(1/z)^n'
endfunction
z=poly(0,'z');
h=[1,2,3];
n1=0:length(h)-1;
H=ztransfer(h,n1);
y=[1,1,2,-1,3];
n2=0:length(y)-1;
Y=ztransfer(y,n2);
X=Y/H;
funcprot(0);
funcprot(0);
x=ldiv(1-z+z^2,z^2,3);
disp(x,'x[n]=');