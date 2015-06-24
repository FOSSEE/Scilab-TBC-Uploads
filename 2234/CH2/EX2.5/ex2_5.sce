clc;
disp("Example 2.5");
l=10;                          //length in centimetres.
Y=20*10^11;                    //Young's Modulus in dyne/cm square.
R=8;                           //Density in gram/cc
n=(1/(2*l))*sqrt(Y/R); //calculating frequency of vibration using 
//young's modulus.
disp(n,"Frequency of vibration in Hz.");    //Displaying Result. 