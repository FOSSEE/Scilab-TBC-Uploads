
//chapter_no.-6,  page_no.-262
//Example_no.6-4-2
clc;


//(a)Calculate_the_insulation_capacitance

eir=3.9;
ei=8.854*(10^-12)*eir;
d=.05*(10^-6);
Ci=ei/d;
disp(Ci,'the_insulation_capacitance(in F/m^2)');

//(b)Calculate_the_saturation_drain_current

Z=12*(10^-12);
Vg=5;
Vth=.10;
vs=1.70*(10^7);
Idsat=Z*Ci*(Vg-Vth)*vs;
Idsat=Idsat*10^7;
disp(Idsat,'the_saturation_drain_current(in mA)');

//(c)Calculate_the_transconductance_in_the_saturation region


Z=12*(10^-12);
vs=1.70*(10^7);
gmsat=Z*Ci*vs;
gmsat=gmsat*10^7;
disp(gmsat,'the_transconductance_in_the_saturation region(in_millimhos)');



//(d)Calculate_the_maximum_operating_frequency_in_the_saturation_region

vs=1.70*(10^7);
L=4*(10^-6);
fm=vs/(2*%pi*L);
fm=fm/(10^2);
fm=fm/(10^9);
disp(fm,'the_maximum_operating_frequency_in_the_saturation_region(in GHz)');






