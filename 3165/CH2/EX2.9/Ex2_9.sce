//Example 2 . 9
//Zt r a n s f o rm o f x1=[ 1 0 3 - 2 ]
clc ;
function [za ]= ztransfer ( sequence ,n)
z= poly (0,'z','r')
za= sequence *(1/ z)^n
endfunction
x1 =[1 0 3 -1 2];
n =0: length (x1) -1;
z1= ztransfer (x1 ,n);
// Di s pl a y the r e s u l t i n command window
disp (z1 ,"Z􀀀t r a n s f o rm o f s e quenc e i s : ");
disp ( 'ROC i s the e n t i r e pl ane e x c e p t z = 0 ' );
