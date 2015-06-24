//Problem 38.04: The cross-sectional area of a transformer limb is 80 cm2 and the volume of the transformer core is 5000 cm3. The maximum value of the core flux is 10 mWb at a frequency of 50 Hz. Taking the Steinmetz constant as 1.7, the hysteresis loss is found to be 100 W. Determine the value of the hysteresis loss when the maximum core flux is 8 mWb and the frequency is 50 Hz.

//initializing the variables:
Phi1 = 0.01; // in Wb
Phi2 = 0.008; // in Wb
csa = 0.008; // in m2
v = 0.005; // in m3
f = 50; // in Hz
n = 1.7; // the Steinmetz constant
Ph1 = 100; // in Watt

//calculation: 
//maximum flux density
Bm1 = Phi1/csa
//hysteresis loss Ph1 = kh*v*f*(Bm1)^n
kh = Ph1/(v*f*(Bm1)^n)
//When the maximum core flux is 8 mWb,
Bm2 = Phi2/csa
//hysteresis loss, Ph2
Ph2 = kh*v*f*(Bm2)^n

printf("\n\n Result \n\n")
printf("\nthe value of the hysteresis loss when the maximum core flux is 8 mWb and the frequency is 50 Hz is %.1f W",Ph2)