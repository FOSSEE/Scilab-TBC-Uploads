//Graphical//
//Example 12.5.1
//Determination of power, frequency and varaince of
//Additive noise
clear;
clc;
close;
ryy = [0,1,3,1,0];//Autocorrelation of signal
cen_ter_value = ceil(length(ryy)/2);//center value of autocorrelation
//Method1
//TO find out the variance of the additive Noise
C = ryy(ceil(length(ryy)/2):$);
corr_matrix = toeplitz(C);//correlation matrix
evals =spec(corr_matrix);//Eigen Values computation
sigma_w = min(evals);//Minimum of eigen value = varinace of noise
//Method2
//TO find out the variance of the additive Noise
P = [1,-sqrt(2),1];//Ploynomial in decreasing order
Z = roots(P);//roots of the polynomial
P1 = ryy(cen_ter_value+1)/real(Z(1));//power of the sinusoid
A = sqrt(2*P1);//amplitude of the sinusoid
sigma_w1 = ryy(cen_ter_value)-P1;//variance of noise method2
disp(P1,'Power of the additive noise')
f1 = acos(real(Z(1)))/(2*%pi)
disp(f1,'frequency of the additive noise')
disp(sigma_w1,'Variance of the additive noise')
