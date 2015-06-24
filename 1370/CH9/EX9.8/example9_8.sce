//example9.8
clc
disp("It can be observed that the screen is divided such that one part is subdivided into 5 units.")
disp("Therefore, 1 subdivision = 1/5 = 0.2 units")
disp("It can be observed that positive peak of signal corresponds to two full divisions and three subdivisions. Hence positive peak is 2+3*0.2=2.6 units while the negative peak also corresponds to 2.6 units.")
v=2.6+2.6
disp(v,"Therefore, (V_pp)[in divisions]=Peak to peak=2.6+2.6=")
v=5.2*2*10^-3
disp(v,"Therefore, (V_pp)[in V]=Number of divisions*volts/divisions= ")
a=10.4/2
disp(a,"Therefore, (V_m)[in mV]=Amplitude=(V_pp)/2=")
v=5.2/(sqrt(2))
format(8)
disp(v,"and, (V_RMS)[in mV]= (V_m)/sqrt(2)= ")
