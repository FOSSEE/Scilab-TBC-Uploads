// Example 2.4: Calculate base current and collector current
Beta=100;//Common Emitter D.C. Current gain
Ie=10;// Emitter current in mili ampere
alfa= (Beta/(Beta+1));//Common Base D.C. Current gain
Ic= alfa*Ie;// Collector current in milli ampere
Ib=Ie-Ic;// Base Current in milli ampere
disp(Ic,"Collector current (in mA)")
disp(Ib,"Base current (in mA)")

