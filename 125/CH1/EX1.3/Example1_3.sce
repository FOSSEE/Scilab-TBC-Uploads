//Caption:Program to calculate number of samples required for an image
//Example1.3
//page 12
clc;
close;
//dimension of the image in inches
m = 4;
n = 6;
N = 400; //number of dots per inch in each direction
N2 = 2*N; //number of dots per inch in both horizontal & vertical
Fs = m*N2*n*N2;
disp(Fs,'Number of samples reuqired to preserve the information in the image=')
//Result
//Number of samples reuqired to preserve the information in the image=   
//15360000.