clc
//Chapter7
//Ex_1
//Given
NA=6.023*10^23 // in mol^-1
d=1.8 //g/cm3
Mat=39.95 //in mol^-1
epsilon_o=8.85*10^-12//F/m2
alpha_e=1.7*10^-40 //F*m2
N=NA*d/Mat //in cm^-3
N=N*10^6 // in m^-3
epsilon_r=1+(N*alpha_e/epsilon_o)
disp(epsilon_r,"Dielectric constant of solid Ar is")
//using clausius-mossotti equation
epsilon_r=(1+(2*N*alpha_e/(3*epsilon_o)))/(1-(N*alpha_e/(3*epsilon_o)))
disp(epsilon_r,"using clausius-mossotti equation,  Dielectric constant of solid Ar is")
