clear
//Given
M = 10           //KN-m moment
v = 8.0            //KN - shear Stress
stress_allow = 8 //MPa - The maximum allowable stress
shear_allow_per = 1.4      //MPa - The allowable stress perpendicular to grain
stress_allow_shear = 0.7   //MPa - The maximum allowable shear stress
//calculations

S = M*(10**6)/stress_allow //mm3
//lets arbitarly assume h = 2b
//S = b*(h**2)/6
h = (1.25*(10**6)*12)**(1/3)            //The depth of the beam
b = h/2                          //mm The width of the beam
A = 140*240                          //sq.mm The area of the crossection , assumption
stress_shear = 3*v*(10**3)/(2*A) //MPa The strear stress
if stress_shear<stress_allow_shear then
    printf("The stress developed  %0.2f  is in allowable ranges for  %0.2f sq.mm area",stress_shear,A)
else
    printf("The stress developed %0.3f  is in non allowable ranges %0.3f area",stress_shear,A)
    end
Area_allow = v*(10**3)/shear_allow_per  //mm - the allowable area
printf("\n The minimum area is  %0.3f sq.mm",Area_allow )
//answer varies due to rounding off errors
