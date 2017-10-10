
//chapter_no.-6,  page_no.-233
//Example_no.6-1-2

clc;

//(a)Calculate_the_pinch-off_Voltage_in_Volts
a=.2*(10^-4);//channel_height
Nd=1*(10^17);//Electron_Concetration
er=11.80;//relative_dielectrin_constant
e=8.854*(10^-14)*er;//medium_dielecric_constant
q=1.6*(10^-19);//electronic_charge
Vp=(q*Nd*(a^2))/(2*e);//pinch-off_voltage

disp(Vp,'pinch-off volatge in(Volts)is');


//(b)Calculate_the_pinch-off_current

un=800;//electron_mobility
L=8*(10^-4);//channel_length
Z=50*(10^-4);//channel_width
a=.2*(10^-4);//channel_height
Nd=1*(10^17);//Electron_Concetration
er=11.80;//relative_dielectrin_constant
e=8.854*(10^-14)*er;//medium_dielecric_constant
q=1.6*(10^-19);//electronic_charge
Ip=(un*(q^2)*(Nd^2)*Z*(a^3))/(L*e);//pinch-off_voltage
Ip=Ip*1000;
disp(Ip,'pinch-off current in(mA)is');


//(c)Calculate_the_built-in_voltage

Nd=1*(10^17);//Electron_Concetration
Na=1*(10^19);//hole_density
w0=26*(10^-3)*log((Nd*Na)/((1.5*10^10)^2));
disp(w0,'built-in voltage in(volts)is');



//(d) Calculate_the_drain_current

Vd=10;//drain_voltage
Vg=-1.5;//gate_voltage
Vg=-1*Vg;//we_take_only_magnitude
x=((Vd+Vg+w0)/(Vp))^(3/2);
x=(2/3)*x;
y=((Vg+w0)/(Vp))^(3/2);
y=(2/3)*y;
Id=(Vd/Vp)-x+y;
Id=Ip*Id;
disp(Id,'the_drain_current (mA)is');



//(e) Calculate_the_saturation_drain_current_at Vg=0

Vg=-1.5;//gate_voltage
Vg=-1*Vg;//we_take_only_magnitude
x=(Vg+w0)/(Vp);
y=((Vg+w0)/(Vp))^(3/2);
y=(2/3)*y;
Idsat=(1/3)-x+y;
Idsat=(Id)*Idsat;
disp(Idsat,'the_saturation_drain_current_(mA)is');


//(f) Calculate_the_cut-off_frequency

fc=(2*un*q*Nd*(a^2))/(%pi*e*(L^2));
disp(fc/(10^9),'the_cut-off_frequency(Ghz)');










