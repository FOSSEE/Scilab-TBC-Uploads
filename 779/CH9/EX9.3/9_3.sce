v = 0.09; vf = 0.001177; vg = 0.09963;
x = (v-vf)/(vg-vf);
hf = 908.79; hfg = 1890.7;
sf = 2.4474; sfg = 3.8935;
h = hf+(x*hfg);
s = sf+(x*sfg);
disp("kJ/kg and kJ/kg K respectively",s,"and",h,"The enthalpy and entropy og the system are")