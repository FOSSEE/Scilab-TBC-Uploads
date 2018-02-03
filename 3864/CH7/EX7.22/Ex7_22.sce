clear
//
//

//Initilization of Variables

//strains
e_A=500 //microns
e_B=250 //microns
e_C=-150 //microns
E=2*10**5 //N/mm**2 //Modulus of Elasticity
mu=0.3 //Poissons ratio
theta=45 //Degrees

//Calculations
e_x=500
e_A=500
e_45=250
e_B=250
e_y=-150 
e_C=-150 

//e_45=(e_x+e_y)*2**-1+(e_x-e_y)*2**-1*cos(2*theta)+rho_x_y*2**-1*sin(2*theta)
//After sub values and further simplifying we get
rho_x_y=(e_45-(e_x+e_y)*2**-1-(e_x-e_y)*2**-1*cos(2*theta*%pi*180**-1))*(sin(2*theta*%pi*180**-1))**-1*2

//Principal strains are given by
e1=(e_x+e_y)*2**-1+(((e_x-e_y)*2**-1)**2+(rho_x_y*2**-1)**2)**0.5 //microns
e2=(e_x+e_y)*2**-1-(((e_x-e_y)*2**-1)**2+(rho_x_y*2**-1)**2)**0.5 //microns

//Principal Stresses
sigma1=E*(e1+mu*e2)*(1-mu**2)**-1*10**-6 //N/mm**2
sigma2=E*(e2+mu*e1)*(1-mu**2)**-1*10**-6 //N/mm**2

//Result
printf("\n Principal Strains are:e1 %0.2f  N/mm**2",e1)
printf("\n                      :e2 %0.2f  N/mm**2",e2)
printf("\n Principal Stresses are:sigma1 %0.2f  N/mm**2",sigma1)
printf("\n                       :sigma2 %0.2f  N/mm**2",sigma2)
