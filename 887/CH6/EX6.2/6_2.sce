clc
//ex6.2
//given V_in(t)=3+2*cos(2000*%pi*t)+cos(4000*%pi*t-A), A=70*%pi/180
//the three parts of V_in(t) are V_in_1=3, V_in_2=2*cos(2000*%pi*t),V_in_3=cos(4000*%pi*t-A)

//first component V_1
V_in_1=3;
f_1=0;      //as omega is zero
//equation of straight line of H_magnitude vs f is x+1000*y-4000=0
H_1_max=(4000-f_1)/1000;      //magnitude of H(traansfer function)
//equation of straight line of H_phase angle vs f is 6000*y=%pi*x (phase angle in radians)
H_1_phi=%pi*f_1/6000;      //phase angle of H
H_1=H_1_max*complex(cos(H_1_phi),sin(H_1_phi));
V_out_1=H_1*V_in_1;
V_out_1_R=real(V_out_1);      //real part
V_out_1_I=imag(V_out_1);      //imaginary part
V_out_1_max=sqrt((V_out_1_R^2)+(V_out_1_I^2));      //peak value
V_out_1_phi=atan(V_out_1_I/V_out_1_R);      //phase angle

//second component V_in_2
V_in_2=2*complex(cos(0),sin(0));      //V_in_2 phasor
w=2000*%pi;      //omega
f_2=w/(2*%pi);      //frequency
//equation of straight line of H_magnitude vs f is x+1000*y-4000=0
H_2_max=(4000-f_2)/1000;      //magnitude of H(traansfer function)
//equation of straight line of H_phase angle vs f is 6000*y=%pi*x (phase angle in radians)
H_2_phi=%pi*f_2/6000;      //phase angle of H
H_2=H_2_max*complex(cos(H_2_phi),sin(H_2_phi));
V_out_2=H_2*V_in_2;
V_out_2_R=real(V_out_2);      //real part
V_out_2_I=imag(V_out_2);      //imaginary part
V_out_2_max=sqrt((V_out_2_R^2)+(V_out_2_I^2));      //peak value
V_out_2_phi=atan(V_out_2_I/V_out_2_R);      //phase angle

//third component
A=-70*%pi/180;      //-70 degrees in radians
V_in_3=complex(cos(A),sin(A));      //V_in_3 phasor
w=4000*%pi;      //omega
f_3=w/(2*%pi);      //frequency
//equation of straight line of H_magnitude vs f is x+1000*y-4000=0
H_3_max=(4000-f_3)/1000;      //magnitude of H(traansfer function)
//equation of straight line of H_phase angle vs f is 6000*y=%pi*x (phase angle in radians)
H_3_phi=%pi*f_3/6000;      //phase angle of H
H_3=H_3_max*complex(cos(H_3_phi),sin(H_3_phi));
V_out_3=H_3*V_in_3;
V_out_3_R=real(V_out_3);      //real part
V_out_3_I=imag(V_out_3);      //imaginary part
V_out_3_max=sqrt((V_out_3_R^2)+(V_out_3_I^2));      //peak value
V_out_3_phi=atan(V_out_3_I/V_out_3_R);      //phase angle

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
