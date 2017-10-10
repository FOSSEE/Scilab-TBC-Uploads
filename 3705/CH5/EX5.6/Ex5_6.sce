
clear//

//Variable Declaration
V_max=24 //Maximum Shear in kN
b=0.160 //Width of the beam in m
h=0.240 //Depth of the beam in m

//Calculations
I=b*h**3*12**-1 //Moment of Inertia of the beam in m^4

//Part 1
Q=b*(h*3**-1)**2 //First moment of Area m^3
tau_max=(V_max*Q)*(I*b)**-1 //Maximum Shear Stress in glue in kPa

//Part 2
tau_max_2=(3.0/2.0)*(V_max/(b*h)) //Shear Stress in kPa
Q_1=b*h*0.5*h*0.25 //First moment about NA in m^3
tau_maxx=(V_max*Q_1)/(I*b) //Shear stress in kPa

//Result
printf("\n The Results agree in both parts")
printf("\n The maximum stress is %0.0f kPa",tau_max_2)
