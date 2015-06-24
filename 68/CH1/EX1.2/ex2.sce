// Example 1.2: Gain of transistor amplifier
// Amplifier has transfer characteristics v_O=10-(10^-11)*(exp^40*v_1) applies for v_1 is greater than or equal 0V and v_o is greater than or equal to 0.3V
L_l = 0.3; // limit L_-
disp(L_l,"The limit L_- (V) =")
v_I=1/40*log((10-0.3)/10^-11); // from the transfer characteristics and v_o=0.3V
disp(v_I,"v_I in volts =")
L_u=10-10^-11; // obtained by v_I=0 in transfer characteristics
disp(L_u,"the limit L_+ (V) =")
V_I=1/40*log((10-5)/10^-11); // V_O=5V
disp(V_I,"The value of the dc bias voltage that results in V_O=5V (V)=")
A_v=-10^-11*exp(40*V_I)*40; // A_v=dv_O/dv_I
disp(A_v,"Gain at the operating point (V/V) =")
disp("NOTE the gain is negative that implies the amplifier is an inverting amplifier")
