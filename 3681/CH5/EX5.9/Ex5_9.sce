// Calculating the net iron area and window area
clc;
disp('Example 5.9, Page No. = 5.82')
// Given Data
Q = 400;// kVA rating
f = 50;// Frequency (in Hz)
Bm = 1.5;// Maximum flux density of core (in Wb per meter square)
Kw = 0.12;// Copper space factor
s = 2.2;// Current density (in Ampere per mm square)
gc = 8.9*10^(3);// Density of copper (in kg per meter cube)
gi = 7.8*10^(3);// Density of iron (in kg per meter cube)
R1 = 0.5;// Ratio of length of mean turn of copper to length of mean flux path
R2 = 4;// Ratio of weight of iron to weight of copper
// Calculation of the net iron area
C = (1/2.22*R1*gc/gi*10^(3))^(1/2);// Flux (in Wb)
Ai = C*(Q*R2/(f*Bm*s*10^(6)))^(1/2);// Net iron area (in meter square)
disp(Ai,'Net iron area (meter square)=');
// Calculation of the net window area
Aw = Q/(2.22*f*Bm*Kw*s*10^(6)*Ai*10^(-3));// Window area (in meter square)
disp(Aw,'Window area (meter square)=');
//in book answers are 0.0478 (meter square) and 0.183 (meter square) respectively.  The answers vary due to round off error
