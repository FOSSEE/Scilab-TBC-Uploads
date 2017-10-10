
//chapter_no.-9,  page_no.-427
//Example_no.9-7-1
clc;


//(a) Calculate_the_number_of_electrons_returned_per_second
Ir=.85;//returned_current
q=1.6*(10^-19);//electronic_charge
Nr=Ir/q;
disp(Nr,'the_number_of_electrons_returned_(per_second)  is =');





//(b)Calculate_the_Energy_associated_with_these_returning_electrons_in_20ms


V=11*(10^3);//overdepreesion_collector_voltage
t=20*(10^-3);
W=V*Nr*t;
disp(W,'the_Energy_associated_with_these_returning_electrons_in_20ms(in eV)  is =');



//(c) Calculate_the_Power_for_returning_electrons


P=V*Ir;
P=P/1000;
disp(P,'the_Power_for_returning_electrons(in KW)is =');


//(d) Calculate_the_Heat_associated_with_the_returning_electrons

t=20*(10^-3);
H=.238*P*1000*t;
disp(H,'the_Heat_associated_with_the_returning_electrons(in calories)is =');


//(e) Calculate_the_temperature

mass=250*(10^-3);
specificheat=.108;
T=H/(mass*specificheat);
disp(T,'the_temperature(in degree Celsius)is =');

//(f) Calculate_whether_the_output_iron_pole_piece_is_melted


disp('the_output_iron_pole_piece_is_melted');