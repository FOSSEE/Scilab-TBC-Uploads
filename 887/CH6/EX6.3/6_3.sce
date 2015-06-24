clc
//ex6.3
R=1000/(2*%pi);      //resistance
C=10*10^-6;      //capacitance
f_B=1/(2*%pi*R*C);      //half-power frequency
//the three parts of V_in are V_1=5*cos(20*%pi*t)+5*cos(200*%pi*t)+5*cos(2000*%pi*t)

//first component V_in_1
V_in_1=5*complex(cos(0),sin(0));      //V_in_1 phasor
w_1=20*%pi;      //omega
f_1=w_1/(2*%pi);      //frequency
H_1=1/(1+%i*(f_1/f_B));      //transfer function
V_out_1=H_1*V_in_1;
V_out_1_R=real(V_out_1);      //real part
V_out_1_I=imag(V_out_1);      //imaginary part
V_out_1_max=sqrt((V_out_1_R^2)+(V_out_1_I^2));      //peak value
V_out_1_phi=atan(V_out_1_I/V_out_1_R);      //phase angle

//second component V_in_2
V_in_2=5*complex(cos(0),sin(0));      //V_in_2 phasor
w_2=200*%pi;      //omega
f_2=w_2/(2*%pi);      //frequency
H_2=1/(1+%i*(f_2/f_B));      //transfer function
V_out_2=H_2*V_in_2;
V_out_2_R=real(V_out_2);      //real part
V_out_2_I=imag(V_out_2);      //imaginary part
V_out_2_max=sqrt((V_out_2_R^2)+(V_out_2_I^2));      //peak value
V_out_2_phi=atan(V_out_2_I/V_out_2_R);      //phase angle

//third component V_in_3
V_in_3=5*complex(cos(0),sin(0));      //V_in_3 phasor
w_3=2000*%pi;      //omega
f_3=w_3/(2*%pi);      //frequency
H_3=1/(1+%i*(f_3/f_B));      //transfer function
V_out_3=H_3*V_in_3;
V_out_3_R=real(V_out_3);      //real part
V_out_3_I=imag(V_out_3);      //imaginary part
V_out_3_max=sqrt((V_out_3_R^2)+(V_out_3_I^2));      //peak value
V_out_3_phi=atan(V_out_3_I/V_out_3_R);      //phase angle

printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp('Output voltage is Vout1+Vout2+Vout3 where')
disp('')
disp('FOR Vout1:')
disp(V_out_1_max,'peak value in volts')
disp(V_out_1_phi*180/%pi,'phase angle in degrees')
disp(f_1,'with frequency in hertz')
disp('')
disp('FOR Vout2:')
disp(V_out_2_max,'peak value in volts')
disp(V_out_2_phi*180/%pi,'phase angle in degrees')
disp(f_2,'with frequency in hertz')
disp('')
disp('FOR Vout3:')
disp(V_out_3_max,'peak value in volts')
disp(V_out_3_phi*180/%pi,'phase angle in degrees')
disp(f_3,'with frequency in hertz')
//we can observe that there is a clear discrimination in output signals based on frequencies i.e, lesser the frequency lesser the effect.
