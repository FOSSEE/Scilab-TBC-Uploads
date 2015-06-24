//CAPTION: Sensitivity_Of_HEMT
//chapter_no.-6,  page_no.-253
//Example_no.6-3-2

clc;



//(a) Calculate_the_conduction_band-edge_difference_between_GaAs_and_AlGaAs

Ega=1.8;
Egg=1.43;
AEc=Ega-Egg;
disp(AEc,'the_conduction_band-edge_difference_is=');

//(b) Calculate_the_sesitivity_of_the_HEMT

q=1.6*(10^-19);
Nd=2*(10^24);
wms=.8;
Vth=.13;
er=4.43;
e=er*(8.854*(10^-12));
S=-[(2*q*Nd*(wms-AEc-Vth))/(e)]^(1/2);//sesitivity_of_the_HEMT
S=S/(10^6);
disp(S,'the_sensitivity_of_the_HEMT_(mV/nm)_is=')
disp(-1*S,'d/dv(Vth)(mV/nm)is=');