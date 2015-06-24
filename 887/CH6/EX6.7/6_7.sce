clc
//ex6.7
//We need a high-pass filter
L=50*10^-3;
//for the transfer function to be approximately constant in passband area(from graph given in the text), we choose
Q_s=1;
f_o=1*10^3;
C=1/(((2*%pi)^2)*f_o^2*L);
R=2*%pi*f_o*L/Q_s;
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp('')
disp('The required second order circuit configuration is')
disp(L*10^3,'Inductance in KH')
disp(C*10^6,'Capacitance in mF(micro Farads)')
disp(R,'Resistance in ohms')
