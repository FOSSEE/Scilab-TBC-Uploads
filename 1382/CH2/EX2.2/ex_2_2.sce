// Example 2.2: Base Current
alfa= 0.987;// Common base D.C. Current Gain
Ie= 10;//in Milli Ampere
Ic= alfa*Ie ; // Collector Current
Ib=Ie-Ic;// Base Current in Mili Ampere
disp(Ic,"collector current (in mA)")
disp(Ib,"base current (in mA)")
