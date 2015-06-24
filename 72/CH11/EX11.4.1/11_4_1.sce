//CAPTION:Characteristic_Impedance_of_a_Shielded_Strip_Line
//chapter_no.-11,  page_no.-508
//Example_no.11-4-1


clc;


//(a)Calculate_the_K_factor

er=2.56//relative_dielectric_constant
w=25;//strip_width
t=14;//strip_thickness
d=70;//shield_depth
K=1/(1-(t/d));
disp(K,'the_K_factor is =');

//(b)Calculate_the_fringe_capacitance

Cf=((8.854*er)*((2*K*log(K+1))-((K-1)*log((K^2)-1))))/%pi;
disp(Cf,'the_fringe_capacitance(in pF/m)is =');


//(c) Calculate_the_characteristic_impedance_of_the_line

Z0=94.15/((((w/d)*K)+(Cf/(8.854*er)))*(sqrt(er)));
disp(Z0,'the_characteristic_impedance_of_the_line(in ohms)is =');


