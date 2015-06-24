// CAPTION:Reflex_Klystron
//chapter_no.-9,  page_no.-399
//Example_no.9-4-1

clc;

//(a) Calculate_the_value_of_the_repeller_voltage
V0=600;
n=2;//mode=2
fr=9*(10^9);
w=2*%pi*fr;
L=1*(10^-3);
em=1.759*(10^11);//em=e/m
x=((em)*(((2*%pi*n)-(%pi/2))^2))/(8*(w^2)*(L^2));//x=V0/(V0+Vr)^2
y=V0/x;//y=(V0+Vr)^2
z=sqrt(y);//z=V0+Vr
Vr=z-V0;
disp(Vr,'the_value_of_the_repeller_voltage(volts)is =');





//(b)Calculate_the_direct_current_necessary_to_give_a_microwave_gap_voltage_of_200V

disp('Assume_that_Bo=1');
disp('V2 = I2*Rsh = 2*I0*J1(X)*Rsh ');
disp('the_direct_current_I0_is_I0 = V2/ 2*J1(X)*Rsh'); 
V2=200;
Rsh=15*(10^3);
X=1.841
J1(X)=.582;
I0 = V2/(2*J1(X)*Rsh);
I0=I0*1000;
disp(I0,'the_direct_current_necessary_to_give_a_microwave_gap_voltage_of_200V(mA)is =');



//(c) Calculate_the_electronic_efficiency

disp('From Eq(9-4-11),Eq(9-4-12) and Eq(9-4-20), the_electronic_efficiency_is');

efficiency=(2*X*J1(X))/((2*%pi*n)-(%pi/2));
efficiency=efficiency*100;
disp(efficiency,'the_electronic_efficiency(in %)is =');

