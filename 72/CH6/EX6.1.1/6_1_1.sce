//CAPTION: Pinch-Off_Voltage_Of_a_Silicon_JFET
//chapter_no.-6,  page_no.-229
//Example_no.6-1-1

clc;
a=.1*(10^-6);//channel_height
Nd=8*(10^23);//Electron_Concetration
er=11.80;//relative_dielectrin_constant
e=8.854*(10^-12)*er;//medium_dielecric_constant
q=1.6*(10^-19);//electronic_charge
Vp=(q*Nd*(a^2))/(2*e);//pinch-off_voltage

disp(Vp,'pinch-off volatge in(Volts)is');
