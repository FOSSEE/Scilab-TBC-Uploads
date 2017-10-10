
//chapter_no.-6,  page_no.-279
//Example_no.6-6-2

clc;


//(a)Calculate_the_insulator_capacitance

eir=3.9;
ei=8.854*(10^-12)*eir;
d=.15*(10^-6);
Ci=ei/d;
Ci=Ci*(10^5);
disp(Ci,'the_insulation_capacitance(in nF/cm^2)');

//(b)Calculate_the_maximum_stored_charges_per_well

Nmax=2*(10^12);
q=1.6*(10^-19);
A=.5*(10^-4);
Qmax=Nmax*A*q;
Qmax=Qmax*(10^12);
disp(Qmax,'the_maximum_stored_charges_per_well(picocoulombs)');

//(c) Calculate_the_required_applied_gate_voltage

Nmax=2*(10^12);
q=1.6*(10^-19);
Vg=(Nmax*q)/(Ci*10^-9);
disp(Vg,'the_required_applied_gate_voltage(in_Volts)');



//(d)Calculate_the_clock_frequency

P=.67*(10^-3);
n=3;
f=P/(n*Vg*Qmax*(10^-12));
f=f/(10^6);
disp(f,'the_clock_frequency(in MHz)');






