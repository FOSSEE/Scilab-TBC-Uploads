// CAPTION:Calculate_the_Line_Characteristic_Impedance_and_Propagation_constant
//chapter_no.-3,  page_no.-84
//Example_no.3-1-1

clc;


//(a)Calculate_the_line_Characteristic_Impedance


R=2;
L=8*(10^-9);
C=.23*(10^-12);
f=1*(10^9);
G=.5*(10^-3);
w=2*%pi*f;

Z0=sqrt((R+(%i*w*L))/(G+(%i*w*C)));
x=real(Z0);
y=imag(Z0);
o=atand(y,x);
disp(o,'the_phase_of_Z0_is =');
M=abs(Z0);//magintue_of_Z0
disp(M,'the_magnitude_of_Z0_is =');
disp(Z0,'the_line_characteristic_impedance is =');



//(b)Calculate_the_propagation_constant

r=sqrt((R+(%i*w*L))*(G+(%i*w*C)));
x=real(r);
y=imag(r);
o=atand(y,x);
disp(o,'the_phase_of_r_is =');
M=abs(r);//magintue_of_r
disp(M,'the_magnitude_of_r_is =');
disp(r,'the_propagation_constant is =');