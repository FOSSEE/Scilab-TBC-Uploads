//Example 2.19
clc
ceq=((0.02*12*10^-24)/(12.02*10^-12))*10^12  // in pF
format(8)
disp(ceq,"  C_eq(in pF) = C1*C2 / C1+C2 =")
fs=(1/(2*%pi*sqrt(50*0.02*10^-15)))*10^-6  // in MHz
format(7)
disp(fs,"Therefore,  f_s(in MHz) = 1 / 2*pi*sqrt(L*C1) =")
fp=(1/(2*%pi*sqrt(50*0.01996*10^-15)))*10^-6  // in MHz
format(7)
disp(fp,"Therefore,  f_p(in MHz) = 1 / 2*pi*sqrt(L*C_eq) =")
disp("Let C_s = 5 pF connected across the crystal")
c2=12+5
disp(c2,"Therefore,  C''2(in pF) = C2 + C_x =")
format(10)
ceq1=0.019976
disp(ceq1,"Therefore,  C''_eq(in pF) = C1*C''2 / C1+C''2 =")
fp1=5.03588
disp(fp1,"Therefore,  f''_p(in MHz) = 1 / 2*pi*sqrt(L*C_eq) =")
disp("New C_x = 6 pF is connected then,")
c21=12+6
disp(c21,"  C''''2(in pF) = C2 + C_x =")
ceq2=0.0199778
disp(ceq2,"Therefore,  C''''_eq(in pF) = C1*C''''2 / C1+C''''2 =")
fp2=5.035716
disp(fp2,"Therefore,  f''''_p(in MHz) = 1 / 2*pi*sqrt(L*C''''_eq) =")
c=(5.03588-5.035716)*10^6
disp(c,"Therefore,  Change(in Hz) = f''_p - f''''_p =")
