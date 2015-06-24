clear;
clc;

//Example - 1.5
//Page number - 23
printf("Example - 1.5 and Page number - 23\n\n");

// Given
P = 1;// [bar] - atospheric pressure
P1guz = 0.75;// [bar] - gauze pressure in 1st evaporator
P2Vguz = 0.25;// [bar] - vaccum gauze pressure in 2nd evaporator
P1abs = P + P1guz;// [bar] - absolute pressure in 1st evaporator
P2abs = P - P2Vguz;// [bar] -absolute pressure in 2nd evaporator

//From saturated steam table as reported in the book
printf(" For P1abs (absolute pressure) = %f bar\n",P1abs);
printf(" The saturation temperature in first evaporator  is 116.04 C\n\n");
printf(" For P2abs (absolute pressure) = %f bar\n",P2abs);
printf(" The saturation temperature in second evaporator  is 91.76 C\n");



