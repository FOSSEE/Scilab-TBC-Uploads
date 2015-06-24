// Example 2.6: Calculate base current and collector current
Beta=100;//Common Emitter D.C. Current gain
Ie=10;// Emitter current in mili ampere
Ib=(Ie/(1+Beta));//Emitter current in mili amperen mA
Ic= Ie-Ib;//Collector current in mili amperen mA
disp(Ib,"Base current (in mA)")
disp(Ic,"Collector current (in mA)")
