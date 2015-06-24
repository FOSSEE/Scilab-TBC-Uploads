//example3.5
clc
disp("The given values are, R1=2.5 ohm, R2=0.01 ohm")
k=400/6600
disp(k,"K=400/6600=")
disp("While finding eqivalent resistance referred to primary, transfer R2 to primary as R2'',")
r=0.01/((0.0606)^2)
disp(r,"R2''(in ohm)=R2/K^2=")
r=2.5+2.7225
format(7)
disp(r,"Therefore, (R_1e)[in ohm]=R1+R2''=")
disp("It can be observed that primary is high voltage hence high resistance side hence while transferring R2 from low  voltage to R2'' on high voltage, its value increses.")
disp("To find total equivalent resistance referred to secondary, first calculate R1'',")
r=2.5*(0.0606)^2
format(8)
disp(r,"R1''(in ohm)=(K^2)*R1=(0.0606^2)*2.5=")
r=0.01+0.00918
disp(r,"(R_2e)(in ohm)=R2*R1''=0.01*0.00918=")
