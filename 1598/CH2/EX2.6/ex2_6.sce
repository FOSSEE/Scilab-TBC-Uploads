clc;
disp("Example 2.7");
t=0.1;               //thickness in centimetre.
Y=8.75*10^11;        //Young's Modulus in dyne/cm square.
R=2.654;             //Density in gram/cm square.
n=(1/(2*t))*sqrt(Y/R);     //calculating frequency using Young's modulus.
disp(n,"Frequency of Vibration in Hz = ");  //Displaying Result.