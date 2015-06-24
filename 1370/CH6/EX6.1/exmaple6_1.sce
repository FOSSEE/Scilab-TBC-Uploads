//exmaple6.1
clc
disp("The deflecting torque is given by,")
disp("(T_d)=NBAI=100*15*A*5*10^-3 Nm")
disp("Now A= Area = 10*8 =80 mm^2= 80*10^-6 m^2")
t=100*0.15*80*5*10^-9
disp(t,"Therefore, (T_d)[in Nm]=100*0.15*80*(10^-6)*5*(10^-3)=")
disp("Now, T_d=T_c=K*(theta)")
disp("Therefore, 6*10^-6 = 0.2*10^-6 *(theta)")
t=(6*10^-6)/(0.2*10^-6)
disp(t,"Therefore, theta(in degree)=(6*10^-6)/(0.2*10^-6)= ")
