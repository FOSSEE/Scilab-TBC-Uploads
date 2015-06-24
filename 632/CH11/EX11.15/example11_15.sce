//clc()
Hna = 26.04;//J/g-atomK
Hs = 22.6;//J/g-atomK
Ho = 16.8;//J/g-atomK
Hh = 9.6;//J/g-atomK
Hna2so410h2o = 2*Hna + Hs + 14*Ho  + 20*Hh;
Hexp = 592.2;//J/molK
Deviation = (Hexp - Hna2so410h2o)*100/Hexp;
disp("%",Deviation,"Deviation in heat capacity = ")
