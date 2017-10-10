clear
//Given
M = 10           //KN-m moment
v = 8.0            //KN - shear Stress 
stress_allow = 8 //MPa - The maximum allowable stress
shear_allow_per = 1.4      //MPa - The allowable stress perpendicular to grain
stress_allow_shear = 0.7   //MPa - The maximum allowable shear stress
//Caliculations 

S = M*(10**6)/stress_allow //mm3 
//lets arbitarly assume h = 2b
//S = b*(h**2)/6
h = (12*S**0.333)              //The depth of the beam
b = h/2                          //mm The width of the beam
A = h*b                          //mm2 The area of the crossection , assumption
stress_shear = 3*v*(10**3)/(2*A) //MPa The strear stress 
if stress_shear<stress_allow_shear then
    printf("The stress developed  %0.2f  is in allowable ranges for  %0.2f mm2 area",stress_shear,A)
else
    printf("The stress developed %0.3f  is in non allowable ranges %0.3f area",stress_shear,A)
    end
Area_allow = v*(10**3)/shear_allow_per  //mm - the allowable area
printf("\n The minimum area is  %0.3f mm2",Area_allow )
