//CAPTION: Resistance_of_a_planar_resistor
//chapter_no.-12,  page_no.-534
//Example_no.12-4-1

clc;
l=10*(10^-3);;//resistance_film_length
ps=2.44*(10^-8);//sheet_resistivity_of_gold_film
w=10*(10^-3);//resistive_film_width
t=.1*(10^-6);//resistive_fim_thickness
R=(l*ps)/(w*t);
disp(R,'the_planar_resistance(in ohm/square)is =');








