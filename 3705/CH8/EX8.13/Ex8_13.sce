
clear//

//Variable Declaration
e_x=800*10**-6 //Strain in x
e_y=200*10**-6 //Strain in y
y_xy=-600*10**-6 //Strain in xy
v=0.30 //Poissons Ratio
E=200 //Youngs Modulus in GPa
R_e=424.3*10**-6 //Strain
e_bar=500*10**-6 //Strain

//Calculations
//Part 1
R_sigma=10**-6*R_e*(E*10**9/(1+v)) //Stress in MPa
sigma_bar=10**-6*e_bar*(E*10**9/(1-v)) //Stress in MPa

//Part 2
sigma1=sigma_bar+R_sigma //Principal Stress in MPa
sigma2=sigma_bar-R_sigma //Principal Stress in MPa

//Result
printf("\n The principal Stresses are as follows")
printf("\n Sigma1= %0.0f MPa and Sigma2= %0.1f MPa",sigma1,sigma2)
