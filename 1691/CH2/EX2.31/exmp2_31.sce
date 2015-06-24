//Example 2.31
clc
disp("The series and parallel resonating frequencies are,")
disp("f_s = 1 / 2*pi*sqrt(C*L)  while  f_p = 1 / 2*pi*sqrt(L*C_eq)")
disp("f_p/f_s = 1/2*pi*sqrt(L*C_eq) * 2*pi*sqrt(LC) = sqrt(c/C_eq) but C_eq = C*C_M/C+C_M")
fp=sqrt(1+(0.04/2))
format(8)
disp(fp,"f_p/f_s = sqrt(C/(C*C_M/C+C_M)) = sqrt(C*(C+C_M)/C*C_M) = sqrt(1+(C/C_M)) =")
disp("f_p = 1.00995*f_s")
inc=0.00995*100
disp(inc,"Therefore,  %increase = (1.00995*f_s-f_s / f_s)*100 =")
