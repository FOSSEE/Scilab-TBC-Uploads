clc
//ex5.3
//V_1 and V_2 are phasors of given voltages
theta_1=-%pi/4;      //for V_1
theta_2=-%pi/6;      //for V_2 (in cos form)
V_1=complex(20*cos(theta_1),20*sin(theta_1));
V_2=complex(10*cos(theta_2),10*sin(theta_2));
V_s=V_1+V_2;
V=sqrt((real(V_s)^2)+(imag(V_s)^2));      //peak voltage of resultant summation
phi=atan(imag(V_s)/real(V_s));      //phase angle of resultant sum voltage
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V,'Peak value of resultant voltage in volts')
disp(phi*180/%pi,'phase of resulting voltage in degrees')      //converting phi in radians to degrees
//result : V_t=Vcos(wt+phi)
