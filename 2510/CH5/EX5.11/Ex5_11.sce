//Variable declaration:
p = 0.15                        //Partial pressure of SO3 (mm Hg)
P = 760.0                       //Atmospheric pressure (mm Hg)
m = 10**6                       //Particles in a million

//Calculation:
y = p/P                         //Mole fraction of SO3
ppm = y*m                       //Parts per million of SO3 (ppm)

//Result:
printf("The parts per million of SO3 in the exhaust is : %.0f ppm.",ppm)
