//clc()
Vgas = 0.09;//m^3
Vliq = 0.01;//m^3
SVliq = 1.061*10^-3;//m^3/kg
SVvap = 0.8857;//m^3/kg
mvap = Vgas / SVvap;
mliq = Vliq / SVliq;
Ul = 504.5;//kJ/kg
Ug = 2529.5;//kJ/kg
U1 = Ul * mliq + Ug * mvap;
SVtotal = (Vgas + Vliq)/(mvap + mliq);
//using steam table , these value of specific volume corresponds to pressure of 148.6bar and internal energy of 2464.6kJ/kg
U = 2464;//kJ/kg
Utotal = U * (mvap + mliq);
//Utotal - U1 = Q - W,but W = o, hence, 
Q = Utotal - U1;
disp("kJ",Q,"Heat to be added = ")