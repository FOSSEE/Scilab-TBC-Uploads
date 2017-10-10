//chapter_no.-6,  page_no.-260
//Example_no.6-4-1
clc;


//(a) Calculate_the_strong_potential_w(inv)_for_strong_inversion

kt=26*(10^-3);
Na=3*(10^17);
Ni=1.5*(10^10);
wsinv=2*kt*log(Na/Ni);
disp(wsinv,'the_strong_potential_w(inv)_for_strong_inversion(volts)');

//(b)Calculate_the_insulator_Capacitance

eir=4;
ei=8.854*(10^-12)*eir;
d=.01*(10^-6);
Ci=ei/d;
Ci=Ci*(1000);
disp(Ci,'the_insulator_Capacitance(mF/m^2)=');

//(c) Calculate_the_threshold_voltage

q=1.6*(10^-19);
Na=3*(10^23);
er=11.8;
e=8.854*er*(10^-12);
Vth=wsinv+((2/(Ci*(10^-3)))*((e*q*Na*.437)^(1/2)))
disp(Vth,'the_threshold_voltageis ()Volts=');



