clear
//
//

//Initilization of Variables

//Strains
e_A=600 //microns
e_B=-450 //microns
e_C=100 //micron
E=2*10**5 //N/mm**2 //Modulus of Elasticity
mu=0.3 //Poissons ratio
theta=240

//Calculations

e_x=600
e_A=600

//e_A=(e_x+e_y)*2**-1+(e_x-e_y)*2**-1*cos(theta)+rho_x_y*2**-1*sin(theta)
//After sub values and further simplifying we get
//-450=(e_x+e_y)*2**-1-(e_x-e_y)*2**-1*(0.5)-0.866*2**-1*rho_x_y   .....................(1)

//e_C=(e_x+e_y)*2**-1+(e_x-e_y)*2**-1*cos(2*theta)+rho_x_y*2**-1*sin(2*theta)
//After sub values and further simplifying we get
//100=(e_x+e_y)*2**-1-0.5*(e_x-e_y)*2**-1*(0.5)-0.866*2**-1*rho_x_y   .....................(2)

//Adding Equation 1 and 2 we get equations as
//-350=e_x+e_y-(e_x-e_y)*2**-1    ...............(3)
//Further simplifying we get

e_y=(-700-e_x)*3**-1    //micron              

rho_x_y=(e_C-(e_x+e_y)*2**-1-(e_x-e_y)*2**-1*cos(2*theta*%pi*180**-1))*(sin(2*theta*%pi*180**-1))**-1*2 //micron

//Principal strains
e1=(e_x+e_y)*2**-1-(((e_x-e_y)*2**-1)**2+(rho_x_y*2**-1)**2)**0.5 //microns
e2=(e_x+e_y)*2**-1+(((e_x-e_y)*2**-1)**2+(rho_x_y*2**-1)**2)**0.5 //microns

//Principal Stresses
sigma1=E*(e1+mu*e2)*(1-mu**2)**-1*10**-6 //N/mm**2
sigma2=E*(e2+mu*e1)*(1-mu**2)**-1*10**-6 //N/mm**2


//Result
printf("\n Principal Stresses are:sigma1 %0.2f  N/mm**2",sigma1)
printf("\n                       :sigma2 %0.2f  N/mm**2",sigma2)
