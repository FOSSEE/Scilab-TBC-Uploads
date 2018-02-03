clear
//
//
//

//Initilization of Variables

d_o=300 //mm //Outside diameter 
d2=200 //mm //Internal Diameter
p=14 //N/mm**2 //internal Fluid pressure
t=50 //mm //Thickness
r_o=150 //mm //Outside Diameter
r2=100 //mm //Internal Diameter

//Calculations

//From Lame's Equation
//p_x=b*(x**2)**-1-a //N/mm**2    ...................(1)
//F_x=b*(x**2)**-1+a //N/mm**2   ...................(2)

//At 
p_x=14 //N/mm**2

//Sub value of p_x in equation 1 we get
//14=(100)**-1*b-a    ............................(3)

//At
p_x2=0 //N/mm**2

//Sub value in equation 1 we get
//0=b*(150**2)**-1-a   ......................(4)

//From Equations 3 and 4 we get
//14=b*(100**2)**-1-b*(100**2)**-1
//After sub values and further simplifying we get
b=14*100**2*150**2*(150**2-100**2)**-1

//From equation 4 we get
a=b*(150**2)**-1

//Hoop Stress
//F_x=b*(x**2)**-1+a //N/mm**2

//At 
x=100 //mm
F_x=b*(x**2)**-1+a //N/mm**2

//At
x2=125 //mm
F_x2=b*(x2**2)**-1+a //N/mm**2

//At
x3=150 //mm
F_x3=b*(x3**2)**-1+a //N/mm**2

//If thin Cyclindrical shell theory is used,hoop stress is uniform and is given by
F=p*d2*(2*t)**-1 //N/mm**2

//Percentage error in estimating max hoop tension
E=(F_x-F)*F_x**-1*100 //%

//Result
printf("\n Max Hoop Stress Developed in the cross-section is %0.2f  N/mm**2",F)
printf("\n Plot of Variation of hoop stress")
