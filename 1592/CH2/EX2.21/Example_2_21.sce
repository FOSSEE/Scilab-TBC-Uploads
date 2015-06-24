//Scilab Code for Example 2.21 of Signals and systems by
//P.Ramakrishna Rao
//Z- transform of a^n u(n) 
clear;
clc ;
close ;
syms a n z;
x1 =1/2;
x2=1/3;
X1= symsum (x1*(z^(-n)),n ,0, %inf );
X2= symsum (x2*(z^(-n)),n ,0, %inf );
X=X1+X2;
//Display the result
disp (X,"Z-transform of u(n) is:");
disp('ROC is the Region |z|> 1/2');
