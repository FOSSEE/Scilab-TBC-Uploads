
clear//

//Variable Declaration
e_a=100*10**-6 //Strain 
e_b=300*10**-6 //Strain
e_c=-200*10**-6 //Strain
E=180 //Youngs Modulus in GPa
v=0.28 //Poissons Ratio 

//Calculations
y_xy=(e_b-(e_a+e_c)*0.5) //Strain in xy
e_bar=(e_a+e_c)*0.5 //Strain 
R_e=sqrt(y_xy**2+(150*10**-6)**2) //Resultant Strain

//Corresponding Parameters from Mohrs Diagram
sigma_bar=(E/(1-v))*e_bar*10**3 //Stress in MPa
R_sigma=(E/(1+v))*R_e*10**3 //Resultant Stress in MPa

//Principal Stresses
sigma1=sigma_bar+R_sigma //MPa
sigma2=sigma_bar-R_sigma //MPa

theta=atan(y_xy/(150*10**-6))*180*%pi**-1*0.5 //Degrees

//Result
printf("\n The Principal Stresses are as follows")
printf("\n Sigma1= %0.1f MPa and Sigma2= %0.2f MPa",sigma1,sigma2)
printf("\n The plane orientation is %0.2f degrees",theta)
