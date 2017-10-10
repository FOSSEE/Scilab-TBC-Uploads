//chapter9
//example9.27
//page174

R=200 // ohm
Rl=2000 // ohm
Eo=30 // V

// for minimum input voltage i.e. Iz=0
Il=Eo/Rl
I=Il // since Iz=0
Vin_min=Eo+I*R

// for maximum input voltage i.e. Iz=25 mA
Iz=25d-3 // A
Il_dash=Eo/Rl
I_dash=Il_dash+Iz
Vin_max=Eo+I_dash*R

printf("minimum input voltage = %.3f V \n",Vin_min)
printf("maximum input voltage = %.3f V \n",Vin_max)
printf("thus range of input = %.3f to %.3f V \n",Vin_min,Vin_max)
