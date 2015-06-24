//Example 2.1
//Z- transform of [1 0 3 -1 2] 
clear;
clc ;
close ;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x1=[1 0 3 -1 2];
n=0:length(x1)-1;
zz=ztransfer(x1,n);    
//Display the result in command window
disp (zz,"Z-transform of sequence is:");
disp('ROC is the entire plane except z = 0');