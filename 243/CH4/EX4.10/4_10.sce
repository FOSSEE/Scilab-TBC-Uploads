//Example No. 4_10
//Errors in Sequence of Computations
//Pg No. 77
clear ; close ; clc ;

x_a = 2.35 ;
y_a = 6.74 ;
z_a = 3.45 ;
ex = abs(x_a)*10^(-3+1)/2
ey = abs(y_a)*10^(-3+1)/2
ez = abs(z_a)*10^(-3+1)/2
exy = abs(x_a)*ey + abs(y_a)*ex
ew = abs(exy) + abs(ez)
mprintf('\n ex = %.5f \n ey = %.5f \n ez = %.5f \n exy = %.5f \n ew = %.5f \n',ex,ey,ez,exy,ew)