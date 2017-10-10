//example 10_53<b>:
//Find unilateral Z transform
clc;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x=[1,2,5,4,0,3];
n1=-2:3;
count=0;
for a=n1(1):length(x)
    if a==0 then
        abc=count;
    else
    end
    count=count+1;        
end
abc=abc+1; 
ac1=0;
x11=[1 1 1 1];
for a=abc:length(x)
    ac1=ac1+1;
    x11(ac1)=x(a);    
end
n11=0:(length(x)-abc);
X=ztransfer(x11,n11);
disp(X,'X(z)=');
funcprot(0);
