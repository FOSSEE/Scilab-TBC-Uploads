//Graphical//
//Example 11.6.1
//Design of wiener filter of Length M =2
clear;
close;
clc;
M =2;  //Wiener Filter Length
Rdx = [0.6 2 0.6] //Cross correlation matrix between the desired input sequence and actual input sequence
C = Rdx(M:$) //Right sided sequence
To_M = toeplitz(C)
Rxx = [0.6 1 0.6] //Auto correlation matrix
Rss = Rxx(M:$)
//Filter coefficients 
h = [0.451 0.165]
//Calculation of Minimum Mean Square Error
sigma_d = 1; //Average power of desired sequence
MSE = sigma_d - h*Rss'
