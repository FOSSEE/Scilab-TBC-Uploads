//example3.12
clc
disp("R1=0.9 ohm, R2=0.03 ohm, X1=5 ohm, X2=0.13 ohm")
disp("K=N2/N1=1/6 as N1:N2 is 6:1")
r=0.03+(0.9*(1/6)^2)
format(6)
disp(r,"Therefore, (R_2e)[in ohm]=R2+R1''=R2+(K^2)*R1=0.03+(1/6)^2*0.9=")
x=0.13+(5*(1/6)^2)
format(8)
disp(x,"(X_2e)[in ohm]=X2+X1''=X2+(K^2)*X1=0.13+(5*(1/6)^2)=")
disp("I_sc = 200 A")
disp("(Z_2e)=(V_sc)/(I_sc)  i.e.  sqrt((R_2e^2)+(X_2e^2))=(V_sc)/200")
v=200*0.27444
disp(v,"V_sc(in V)=200*0.27444=")
v=54.8895*6
disp(v,"i) V1(in V)=(V_sc)/K=54.8895/(1/6)=")
disp("(W_sc)=(V_sc)*(I_sc)*cos(phi_sc)    and    (W_sc)=(I_sc^2)*(R_2e)")
disp("Therefore, (200^2)*0.055 = 54.8895*200*cos(phi_sc)")
s=((0.055*200)/(54.8895))
format(4)
disp(s,"Therefore, cos(phi_sc)[lagging]=")
