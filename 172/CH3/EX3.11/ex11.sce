//example 11
//predicting the nature of given state
clear
clc
disp('For Nitrogn, the critical properties are 126.2 K, 3.39 MPa. Given T=20+273.2 K, P=1.0 MPa. Since, given temperature is more than twice Tc and the reduced pressure is less than 0.3, ideal gas behaviour is a very good assumption.')
disp('For Carbon Dioxide, the critical properties are 304.1 K,7.38 MPa.Given T=20+273.2 K, P=1.0 MPa Therefore, reduced properties are 0.96(T/Tc) and 0.136 (P/Pc). CO2 is a gas with a Z of about 0.95, os the ideal gas is accurate to within about 5% in this case.')
disp('Given P=1.0MPa, T=20+273.2 K. For Ammonia, at T=293.2 K, Pg=858 kPa. Since, P>Pg, this state is compressible liquid and not a gas.')