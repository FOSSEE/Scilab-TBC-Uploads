// Example 2.10 page no-58
clear
clc

//(a)
h=6.63*10^-34 //Plank's Constant,  J sec.
e=1.6*10^-19 //Charge of Electron, C
c=3*10^8 //Velocity of Light, m/sec
v=0.55     //volts
l=5500*10^-10 //m
fi=(h*c)/(l*e)
fi=fi-v
printf("\n(a)\nWork Function(WF), fi=%.2f Volts",fi)
//(b)
l0=12400/fi
printf("\n\n(b)\nThreshold Wavelength = %d A°",l0)
