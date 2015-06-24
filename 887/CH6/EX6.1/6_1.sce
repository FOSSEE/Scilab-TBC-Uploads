clc
//ex 6.1
// given V_in(t)=2*cos(2000*%pi*t+A), A=40*%pi/180
w=2000*%pi;      //omega
f=w/(2*%pi);      //frequency
A=40*%pi/180;      //40 degrees in radians
//equation of straight line of H_magnitude vs f is x+1000*y-4000=0
H_max=(4000-f)/1000;      //magnitude of H(traansfer function)
//equation of straight line of H_phase angle vs f is 6000*y=%pi*x (phase angle in radians)
H_phi=%pi*f/6000;      //phase angle of H
H=H_max*complex(cos(H_phi),sin(H_phi));
V_in=2*complex(cos(A),sin(A));      //input voltage phasor
V_out=H*V_in;      //output voltage phasor
V_out_R=real(V_out);      //real part
V_out_I=imag(V_out);      //imaginary part
V_out_max=sqrt((V_out_R^2)+(V_out_I^2));      //peak value
V_out_phi=atan(V_out_I/V_out_R);
disp(V_out_max,'peak value of Vout in volts')
disp(V_out_phi*180/%pi,'phase angle of Vout in degrees')
disp(f,'with frequency equal to')
