//example8.3
clc
disp("Given : I_B=20 uA, I_E=6.4 mA")
disp("I_E=I_B+I_C=I_B+[(I_B)*(beta_dc)]=(I_B)*(1+(beta_dc))")
b=(6.4*10^-3)/(20*20^-6)
disp(b,"(beta_dc)+1=(I_E)/(I_B)=")
b=320-1
disp(b,"Therefore, (beta_dc)=")
a=319/320
format(7)
disp(a,"(alpha_dc)=(beta_dc)/(1+(beta_dc))=319/(1+319)=")
i=319*20
disp(i,"I_C(in uA)=[(beta_dc)*(I_B)]=")
c=0.9968*6.4
disp(c,"Also, (I_C)[in mA]=[(alpha_dc)*(I_E)]=")
