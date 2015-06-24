//Problem 38.03: A ferromagnetic ring has a uniform cross-sectional area of 2000 mm2 and a mean circumference of 1000 mm. A hysteresis loop obtained for the specimen is plotted to scales of 10 mm = 0.1 T and 10 mm = 400 A/m and is found to have an area of 104 mm2. Determine the hysteresis loss at a frequency of 80 Hz.

//initializing the variables:
csa = 0.002; // in m2
l = 1; // in m
a = 400/0.01; // 10 mm = 400 A/m 
b = 0.1/0.01; // 10 mm = 0.1 T 
A = 0.01; // in m2
f = 80; // in Hz

//calculation: 
//hysteresis loss per cycle
HL = A*a*b
//At a frequency of 80 Hz,
//hysteresis loss
HLf = HL*f
//Volume of ring
v = csa*l
//hysteresis loss
Ph = HLf*v

printf("\n\n Result \n\n")
printf("\n the hysteresis loss at a frequency of 80 Hz is %.0f W",Ph)