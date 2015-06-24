//Problem 38.08: When a transformer is connected to a 500 V, 50 Hz supply, the hysteresis and eddy current losses are 400 Wand 150 W respectively. The applied voltage is increased to 1 kV and the frequency to 100 Hz. Assuming the Steinmetz index to be 1.6, determine the new total core loss.

//initializing the variables:
V1 = 500; // in Volts
V2 = 1000; // in Volts
Ph1 = 400; // in W
Pe1 = 150; // in W
f1 = 50; // in Hz
n = 1.6; // Steinmetz index
f2 = 100; // in Hz

//calculation: 
//hysteresis loss Ph = k1*f*(E/f)^n
//At 500 V and 50 Hz
k1 = Ph1/(f1*(V1/f1)^1.6)
//At 1000 V and 100 Hz,
Ph2 = k1*f2*(V2/f2)^1.6
//eddy current loss, Pe = k2*E^2
//At 500 V,
k2 = Pe1/(V1^2)
//At 1000 V,
Pe2 = k2*(V2^2)
//the new total core loss
TL = Ph2 + Pe2

printf("\n\n Result \n\n")
printf("\n the new total core loss %.0f W",TL)