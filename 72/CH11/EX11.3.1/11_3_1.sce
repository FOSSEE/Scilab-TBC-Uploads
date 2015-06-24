//CAPTION:Characteristic_Impedance_of_a_Coplanar_Stripline
//chapter_no.-11,  page_no.-507
//Example_no.11-3-1

clc;

Pavg=250*(10^-3);//average_power_flowing_in_the_positive_z_direction
Io=100*(10^-3);//total_peak_current
Z0=(2*Pavg)/(Io^2);
disp(Z0,'the_characteristic_impedance_of_the_coplanar_strip_line(in ohms)is =');










