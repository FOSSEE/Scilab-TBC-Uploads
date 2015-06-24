//Example 2.53 (a)
//Z- transform of [3 1 2 5 7 0 1] 
clear;
clc ;
close ;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x1=[3 1 2 5 7 0 1];
n=-3:3;
zz=ztransfer(x1,n);    
//Display the result in command window
disp (zz,"Z-transform of sequence is:");