clc;
//page 272
//problem 5.5

//Let Abe the maximum value of the discrete samples.
//Error tolerated is 0.1% i.e. 0.001A
//If D is step size then possible maximum error is D/2
//Thus D/2 = 0.001A or A/D = 500 = no of levels required(Levels)
Levels = 500

//minimum no of binary digits required(B) = rounded value to the next higher integer of log2 (Levels)
B = round(log2 (Levels))

disp('Minimum no of binary digits required '+string(B))
