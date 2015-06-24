//Example 2.3
//Z- transform of [2 -1 3 2 1 0 2 3 -1] 
clear;
clc ;
close ;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x1=[2 -1 3 2 1 0 2 3 -1];
n=-4:4;
zz=ztransfer(x1,n);    
//Display the result in command window
disp (zz,"Z-transform of sequence is:");
disp('ROC is the entire plane except z = 0 and z = %inf');