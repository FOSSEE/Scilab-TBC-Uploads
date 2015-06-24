clc
//to calculate cut-off wavelength of the fibre
//(2*del)^(1/2)=(2*(n1-n2)/n1)^(1/2)=(0.005)^(1/2)=0.071
a=5*10^-6 //radius in micrometre
n1=1.46 //core refractive index in micrometre
Vc=2.405 //cut-off value of V parametre for single mode operation
//formula is LAMBDAc=(2*%pi*a*n1*(2*del)^(1/2))/Vc 
lambdac=(2*%pi*a*n1*0.071)/Vc
disp("cut-off wavelength is LAMBDAc="+string(lambdac)+"metre")
