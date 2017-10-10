//Example_a_8_12 page no:332
clc;
//variables cannot be used without initialization and hence the equation cannot be derived like in the text book, the capacitance value can be calculated using the derived values by substituting known values in the equation
C=15/(2*%pi*10^6*1256*80);
C=C*10^12;//converting to pico Farad
disp(C,"the value of C to give resonance is (in pF)");
