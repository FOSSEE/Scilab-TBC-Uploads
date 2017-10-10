
//chapter_no.-8,  page_no.-338
//Example_no.8-4-1

clc;

//(a) Calculate_the_break_down_voltage
q=1.6*(10^-19);
N=2.8*(10^21);//Donor_Concentration
L=6*(10^-6);//silicon_length
er=11.8;//Relative_dielectric_constant
es=8.854*(10^-12)*er;
Vbd=(q*N*(L^2))/es;
disp(Vbd,'the_break_down_voltage_is_double_its_critical_voltage_as(in Volts)is =');

//(b)Calculate_the_break_down_electric_field


Ebd=Vbd/L;
disp(Ebd,'the_break_down_electric_field(in V/m)is =');
Ebd=Ebd/100;
disp(Ebd,'the_break_down_electric_field(in V/cm)is =');
