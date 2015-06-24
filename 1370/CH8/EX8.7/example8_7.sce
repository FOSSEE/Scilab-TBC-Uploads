//example8.7
clc
disp("V_m= Peak value of input =200 V")
disp("V_BO=100 V with I_G=2 mA and R_L=100 ohm")
a=asind(1/2)
disp(a,"i) Firing angle alpha(in degree)=sinh((V_BO)/(V_m))=sinh(100/200)=")
a=180-30
disp(a,"ii) Conduction angle beta = 180-(alpha) =")
v=(200*(1+cosd(30)))/(2*%pi)
format(7)
disp(v,"iii) Average output voltage (V_dc)=(V_m*(1+cos30))/(2*pi)=")
p=(59.39^2)/100
format(8)
disp(p,"(P_dc(av))[in W]=(V_dc^2)/R_L=")
