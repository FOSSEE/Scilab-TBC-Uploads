clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
I1=0.4*10^-3//A
I2=0.6*10^-3//A
alpha1=0.01
alpha2=0.9999
I=(I1+I2)/(1-alpha1)
disp(I,"I in mA")
I=(I1+I2)/(1-alpha2)
disp(I,"I in A")

