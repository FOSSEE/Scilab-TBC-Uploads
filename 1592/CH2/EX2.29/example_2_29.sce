//Scilab Code for Example 2.29 of Signals and systems by
//P.Ramakrishna Rao
//Z- transform of a^n u(n) 
clear;
clc ;
close ;
syms a n z;
x =1;
X= symsum (x*(z^(-n)),n ,0, %inf );
//Display the result
disp (X,"Z-transform of u(n) is:");
disp('ROC is the Region |z|> 1')

