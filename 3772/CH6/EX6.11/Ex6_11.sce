// Problem no 6.11,Page No.162

clc;clear;
close;

L=2.5 //m //Length of beam
L_1=1.5 //m //Length from Fixed end
W=50*10**3 //N //Load

//Calculations

//Case-1
y=W*L**3*3**-1 //Deflection of the cantilever at free end

//Case-2
//Deflection of cantilever at free end is
//y_1=W_1*L**3*3**-1+W_1*L_1**3*3**-1+W_1*L_1**3*3**-1*(L-L_1)
//After substituting values in above equation and simplifying further we get

//y_1=22.375*W_1*3**-1

W_1=y*3*22.375**-1*10**-3 //Magnitude of equal Loads
M_1=W*L*10**-3
M_2=W_1*L+W_1*L_1

//Let M_1=sigma_1*z  and M_2=sigma_2*z
//Dividing above two equations we get

//Let X=sigma_1*sigma_2**-1
X=M_2*M_1**-1*100

//Result
printf("Magnitude of equal Loads is  %.2f kN",W_1)
printf("\n Max Bending stress is  %.2f %%",X)
