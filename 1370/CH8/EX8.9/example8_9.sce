//example8.9
clc
disp("For half wave rectifier, the SCR operates as shown in the Fig. 8.63.")
disp("V_in = 325*sin(wt)=V_m*sin(wt)")
disp("Therefore, V_m = 325 V")
disp("w=100*pi rad/sec")
disp("V_BO=125 V")
a=sinh(125/325)
format(6)
disp(a,"Therefore, alpha=sinh(V_BO/V_m)=")
d=(22.619*%pi)/180
format(7)
disp(d,"Therefore, alpha=(22.619*pi)/180 radian=")
t=0.3947/(100*%pi)
format(8)
disp(t,"Therefore, Time of alpha(in sec)=alpha/w=0.3947/(100*pi)=")
disp("For this period SCR remains OFF in positive half cycle.")
disp("While for entire negative half cycle i.e. for pi radians (180 degree) it remains OFF. Thus corresponding time is (angle/w)")
a=1/100
disp(a,"i.e. pi/(100*pi)[in sec]= ")
t=10+1.25
disp(t,"Total time for which SCR is OFF(in msec) = 10+1.25= ")
