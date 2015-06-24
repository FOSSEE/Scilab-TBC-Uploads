//clc()
G1 = 100;//kmol
//G1 and G2 be the molar flow rate of the gas at the inlet and the exit of the absorber resp.,y1 and y2 mole fraction at entrance and exit resp.,
y1 = 0.25;//%
y2 = 0.05;//%
//air balance gives, G1 * ( 1-y1 ) = G2 * ( 1-y2 )
G2 = G1 * ( 1-y1 ) / (1 - y2);
maleaving = G2 * y2;
maentering = G1 * y1;
Pabsorbed = (maentering - maleaving) * 100 / ( maentering);
disp("%",Pabsorbed,"Percentage of acetone absorbed = ")