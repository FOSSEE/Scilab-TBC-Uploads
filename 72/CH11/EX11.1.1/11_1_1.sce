//CAPTION: Characteristic_Impedance_of_Microstrip_line
//chapter_no.-11,  page_no.-495
//Example_no.11-1-1

clc;


er=5.23;//relative_dielectric_constant
h=7;//height_from_microstrip_line_to_the_ground
t=2.8;//thickness_of_the_microstrip_line
w=10;//width_of_the_microstrip_line
Z0=(87*(log((5.98*h)/(t+(.8*w)))))/sqrt(er+1.41);
disp(Z0,'the_characteristic_impedance_of_the_line(in ohms)is =');










