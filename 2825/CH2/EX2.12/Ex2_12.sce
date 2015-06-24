//Ex2_12 Pg-92
clc

C=3*10^8 //speed of light in m/s
h=6.6*10^(-34) //plank's constant in J
Eg=1.98*1.6*10^(-19) //band gap
lamda=(C*h)/Eg //wavelength
printf("Wavelength = %.0f nm \n",lamda*10^9)
disp("     Since lamda is in the red region of the visible light and hence the colour of emitted radiation is RED")
