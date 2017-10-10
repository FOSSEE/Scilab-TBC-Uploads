
clear//

//Variable Declaration
M=2.21 //Applied moment in kip.ft
d=3 //Diameter of the bar in inches
sigma_y=40 //Yield strength of the of steel in ksi

//Calculations
//Part 1
sigma=32*M*12*(%pi*d**3)**-1 //Maximum Bending Stress in ksi
T1=sqrt((sigma_y*0.5)**2-5**2)/(12*0.18863) //Maximum Allowable torque in kip.ft

//Part 2
R=sqrt((sigma_y**2-5**2)*3**-1) //Maximum shear stress in ksi
T2=sqrt(R**2-5**2)/(12*0.18863) //Maximum safe torque in kpi.ft

//Result
printf("\n Using the maximum shear stress theory T= %0.2f kip.ft",T1)
printf("\n Using the maximum sitrotion energy theory T= %0.2f kip.ft",T2)
