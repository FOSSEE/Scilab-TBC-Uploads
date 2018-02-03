clear
//Given
hp = 10         // horse power of motor
f = 30          // given
shear_T = 55    //MPa - The maximum shear in the shaft
//calculations

T = 119*hp/f            // N.m The torsion in the shaft
//j/c=T/shear_T=K
k = T*(10**3)/shear_T //mm3
//c3=2K/3.14
c = ((2*k/3)**0.33)   //mm - The radius of the shaft
diameter = 2*c           //mm - The diameter of the shaft
printf("\n The Diameter of the shaft used is %0.2f mm",diameter)
printf("\n For practical purposes, a 16-mm shaft would probably be selected")
