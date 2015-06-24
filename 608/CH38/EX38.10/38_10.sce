//Problem 38.10: The core of a synchrogenerator has total losses of 400 W at 50 Hz and 498W at 60 Hz, the flux density being constant for the two tests. (a) Determine the hysteresis and eddy current losses at 50 Hz (b) If the flux density is increased by 25% and the lamination thickness is increased by 40%, determine the hysteresis and eddy current losses at 50 Hz. Assume the Steinmetz index to be 1.7.

//initializing the variables:
TL1 = 400; // in Watt
TL2 = 498; // in Watt
x = 0.25;
y = 0.4;
f1 = 50; // in Hz
n = 1.7; // Steinmetz index
f2 = 60; // in Hz

//calculation: 
//if volume v and the maximum flux density are constant
//hysteresis loss Ph = kh*v*f*(Bm)^n = k1*f
//(if the maximum flux density and the lamination thickness are constant)
//eddy current loss, Pe = ke*(Bm1*f1*t1)^2 = k2*f^2
//At 50 Hz frequency, TL1 = k1*f1 + k2*f1^2
//At 60 Hz frequency, TL2 = k1*f2 + k2*f2^2
//Solving equations gives the values of k1 and k2.
k2 = (5*TL2 - 6*TL1)/(5*(f2^2) - 6*(f1^2))
k1 = (TL1 - k2*f1^2)/f1
//hysteresis loss Ph = k1*f
Ph1 = k1*f1
//eddy current loss
Pe1 = k2*f1^2
//Since at 50 Hz the flux density is increased by 25%, the new hysteresis loss is
Ph2 = Ph1*(1 + x)^1.7
//Since at 50 Hz the flux density is increased by 25%, and the lamination thickness is increased by 40%, the new eddy current loss is
Pe2 = Pe1*((1 + x)^2)*(1 + y)^3

printf("\n\n Result \n\n")
printf("\n (a)the hysteresis and eddy current losses at 50 Hz are %.0f W and %.0f W resp.",Ph1, Pe1)
printf("\n (b)the hysteresis and eddy current losses at 50 Hz after increement are %.1f W and %.1f W resp.",Ph2, Pe2)