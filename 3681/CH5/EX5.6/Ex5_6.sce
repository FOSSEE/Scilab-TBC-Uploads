// Calculating the net iron area and window area and full load mmf
clc;
disp('Example 5.6, Page No. = 5.80')
// Given Data
Q = 400;// kVA rating
R = 2.4*10^(-6);// Ratio of flux to full load mmf
f = 50;// Frequency (in Hz)
Bm = 1.3;// Maximum flux density of core (in Wb per meter square)
Kw = 0.26;// Window space factor
s = 2.7;// Current density (in Ampere per mm square)
// Calculation of the net iron area
K = (4.44*f*R*10^(3))^(1/2);
Et = K*Q^(1/2);// Voltage per turn (in Volts)
Flux = Et/(4.44*f);// Flux (in Wb)
Ai = Flux/Bm;// Net iron area (in meter square)
disp(Ai,'Net iron area (meter square)=');
// Calculation of the net window area
Aw = Q/(2.22*f*Bm*Kw*s*10^(6)*Ai*10^(-3));// Window area (in meter square)
disp(Aw,'Window area (meter square)=');
// Calculation of the full load mmf
AT = Flux/R;// Full load mmf (in A)
disp(AT,'Full load mmf (A)=');
//in book answers are 0.0507 (meter square), 0.0777 (meter square) and 27500 (A) respectively.  The answers vary due to round off error
