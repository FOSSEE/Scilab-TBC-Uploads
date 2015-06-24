//exmaple7.23
clc
disp("E_p(rms) = 230V, N2/N1 = 1/15, R_L=50 ohm")
disp("R_f = R_s = 0 ohm as ideal")
disp("Now, E_p(rms)/E_s(rms) = N1/N2")
e=230/15
format(7)
disp(e,"Therefore, E_s(rms)[in V] = N2*E_p(rms)/N1 = 230/15 = ")
e=15.333*sqrt(2)
disp(e,"Therefore, E_sm(in V) = ")
i=21.684/50
disp(i,"Therefore, (I_m) = (E_sm)/(R_s+2*R_f+R_L)= ")
i=(2*0.4336)/(%pi)
disp(i,"I_DC(in A)=(2*I_m)/pi=")
e=0.276*50
disp(e,"Therefore, E_DC(in V)=Load voltage=(I_DC)*(R_L)=")
disp("Ripple factor = 0.482       ..For full wave rectifier")
disp("Ripple factor = (ac rms output)/(dc output)=(ripple voltage)/E_DC")
disp("Therefore, 0.482=ripple factor")
r=13.8*0.482
disp(r,"Therefore, Ripple voltage = 13.8*0.482 = ")
