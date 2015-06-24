// Example 2.3: Calculate base current and collector current
alfa= 0.967;// Common base D.C. Current Gain
Ie= 10;//in Milli Ampere
Ic= alfa*Ie ; // Collector Current
Ib=Ie-Ic;// Base Current in Mili Ampere
disp(Ic,"collector current (in mA)")
disp(Ib,"base current (in mA)")
