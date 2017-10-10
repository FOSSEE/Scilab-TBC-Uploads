//Example 8_5 page no:306
clc;
R=10;//resistance in ohm
L=0.1;//inducatance in henry
C=10*10^-6;//capacitance in farad
fr=1/(2*%pi*(sqrt(L*C)));
BW=R/(2*%pi*L);
Q=fr/BW;
disp(Q,"the quality factor of a coil for the series circuit is");
