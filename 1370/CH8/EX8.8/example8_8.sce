//example8.8
clc
disp("(V_dc(av))=80 V, (V_rms)=230 V")
disp("Note that given ac mains voltage is rms unless and otherwise specified to be peak")
v=230*sqrt(2)
format(8)
disp(v,"Therefore, V_m(in V)=sqrt(2)*(V_rms)=")
disp("Now , (V_dc(av))=(V_m*(1+cos(alpha)))/(2*pi)")
disp("Therefore, 80=(325.269*(1+cos(alpha)))/(2*pi)")
disp("Therefore, cos(alpha)=0.5453")
c=acosd(0.5453)
format(6)
disp(c,"Therefore, alpha(in degree)=")
