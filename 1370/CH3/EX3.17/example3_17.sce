//exmaple3.17
clc
disp("5 kVA, 2300/230 V, P_i=40 W, (P_cu)F.L. =112 W, cos(phi)=0.8")
disp("Sr.    kVA      n=Fraction of full load        New P_cu=        %eta=n[Total VA]cos(phi)/n[Total VA]cos(phi)+P_i+New P_cu *100")
disp("No.   output     =Actual kVA/total kVA       n^2 P_cu(F.L.) ")
disp("1     1.25        0.25                              7                   95.51%")
disp("2      2.5        0.5                               28                  96.711%")
disp("3     3.75        0.75                              63                  96.668%")
disp("4       5          1                                112                 96.339%")
disp("5     6.25        1.25                              175                 95.877%")
disp("6     7.5         1.5                               252                 95.359%")
disp("")
disp("The efficiency against kVA output curve is shown in the fig. 3.28")
