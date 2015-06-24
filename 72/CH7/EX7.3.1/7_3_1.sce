//CAPTION: Criterion_of_Mode_Operation
//chapter_no.-7,  page_no.-304
//Example_no.7-3-1

clc;

// Calculate_the_criterion_for_classifying_the_modes_of_operation
er=13.1;
e=1.6*(10^-19);
E=8.854*(10^-12)*er;//dielectric_constant
vd=2.5*(10^5);//electron_drift_velocity
un=.015;//negative_electron_mobility

disp('the_criterion_from_Eq-7-3-3_is_for_classifying_the_modes_of_operation_for_the_gunn_effect_diodes_is noL > E*v/e*un');

x=(E*vd)/(e*un);
x=x/(10^4);
disp(x,'the_criterion_is E*vd/e*un (in /cm^2)=');

disp(x,'This_means_that_the_product_of_the_doping_concentration_and_the_device_length_must_be no*L > ');