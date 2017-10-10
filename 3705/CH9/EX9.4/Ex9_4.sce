
clear//

//Variable Declaration
sigma_co_w=12 //Maximum stress in compression in MPa
sigma_st_w=140 //Maximum stress in steel in MPa
M=90 //Moment in kN.m
n=8 //Modular Ratio 

//Calculations
//h=0.4068d
//bd^2=0.04266
b=(0.04266/(1.5**2))**0.3333 //Breadth in m 
d=1.5*b //Depth in m
h=0.4068*d //Height in m

//Area of steel
Ast=((M*10**3)/((d-h*3**-1)*sigma_st_w*10**3))*10**3 //Area of steel in mm^2

//Result
printf("\n The dimensions of the beam are")
printf("\n b= %0.0f mm and d= %0.0f mm",b*1000,d*1000)
printf("\n Area of steel= %0.0f mm^2",Ast)
