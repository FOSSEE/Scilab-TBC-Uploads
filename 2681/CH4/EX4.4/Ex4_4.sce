//scattering matrix of inductor
//given
clc
IL=0.3//db//insertion loss
I=40//db//isolation
s21=(10^(-0.3/20))//-20log|s21|
s12=(10^(-40/20))//-20log|s12|
s11=0//FOR SCATTER MATRIX
s22=0//FOR SCATTER MATRIX
S=[s11,s12;s21,s22]
S=round(S*1000)/1000///rounding off decimals
disp(S,'THE  matrix is  S-matrix:')//all points are well matched
