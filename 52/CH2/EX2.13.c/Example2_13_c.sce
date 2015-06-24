//Example 2.13 (c)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z- transform of u(n-2) 
clear;
clc ;
close ;
syms n z;
x =1;
X= (1/(z^2))*symsum (x*(z^(-n)),n ,0, %inf );
//Display the result in command window
disp (X,"Z-transform of u(n-2) is:");