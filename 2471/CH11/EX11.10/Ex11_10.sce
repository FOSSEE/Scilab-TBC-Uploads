clear ;
clc;
// Example 11.10
printf('Example 11.10\n\n');
printf('Page No. 324\n\n');

//given
Pr = 100;// Production in tonnes per day
p = 10.2;// percentage of sulphur dioxide
T1 = 900;//Burner temperature in degree celcius
T2 = 425;//Required temperature in degree celcius
P = 10;// Dry saturated steam pressure in bar
T = 120;// Dry saturated steam temperature in degree celcius
//At the given Temperature =T and Pressure P, the required heat Qr to geberate steam from feed water is calculated from the steam table.
Qr = 2.27*10^6;// in J/kg

Sp_1 = 1.14*10^3;// Specific heat of the inlet gas in J/kmol-K
Sp_2 = 1.03*10^3;// Specific heat of the outlet gas in J/kmol-K
pr_rate = 1.2;// production rate in kmol/s

//In the calculation part, the book has taken percentage of sulphur dioxide p = 10.6 in the place of p = 10.2, so there exists a deviation in answer
Q_in = ((Pr*pr_rate)/p) * Sp_1 * T1;// Heat content of the inlet gas in J/s
Q_out = ((Pr*pr_rate)/p) * Sp_2 * T2;// Heat content of the outlet gas in J/s
Qa = Q_in - Q_out;// Heat available for steam
S = Qa/Qr;// in kg/s
printf('The steam production is %.3f kg/s',S)//Deviation in answer is due to some wrong value substition as discussed above





