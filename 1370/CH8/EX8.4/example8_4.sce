//example8.4
clc
disp("Given: I_CO=1.1 uA, I_E=21 uA")
disp("I_CEO=(1+(beta_dc))*(I_CO)")
disp("1+(beta_dc)=(I_CEO).(I_CO)=(21 uA)/(1.1 uA)=19")
b=19-1
disp(b,"Therefore, (beta_dc)=")
a=18/19
format(6)
disp(a,"(alpha_dc)=(beta_dc)/(1+(beta_dc))=18/(1+18)=")
