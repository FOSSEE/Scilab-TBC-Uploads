//CAPTION: Current-Voltage_Characteristics_Of_a_GaAs_MESFET
//chapter_no.-6,  page_no.-244
//Example_no.6-2-2

clc;


//(a) Calculate_the_pinch-off_voltage

a=.1*(10^-6);//channel_height
Nd=8*(10^23);//Electron_Concetration
er=13.1;//relative_dielectrin_constant
e=8.854*(10^-12)*er;//medium_dielecric_constant
q=1.6*(10^-19);//electronic_charge
Vp=(q*Nd*(a^2))/(2*e);//pinch-off_voltage

disp(Vp,'pinch-off volatge in(Volts)is');



//(b)Calculate_the_velocity_ratio

un=.08;//electron_mobility
vs=2*(10^5);
L=14*(10^-6);
n=(Vp*un)/(vs*L)
disp(n,'the velocity ratio');


//(c) Calculate_the_saturation_drain_current_at Vg=0

L=14*(10^-6);
Z=36*(10^-6);
Ipsat=(q*Nd*un*a*Z*Vp)/(3*L);
Ipsat=Ipsat*1000;
disp(Ipsat,'the_saturation_drain_current_(mA)is');



//(d) Calculate_the_drain_current

Vd=5;
Vg=2;
u=((Vd+Vg)/Vp)^(1/2);
p=((Vg)/Vp)^(1/2);
Id=(3*((u^2)-(p^2))-2*((u^3)-(p^3)))/(1+(n*((u^2)-(p^2))));

Id=Id*Ipsat;
disp(Id,'the_drain_current_(mA)is');














