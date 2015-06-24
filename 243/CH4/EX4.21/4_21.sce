//Example 4_21
//Pg No. 85
clear ; close ; clc ;

x = -10
T_act(1) = 1
T_trc(1) = 1
e_x_cal = 1
for i = 1:100
    T_act(i+1) = T_act(i)*x/i
    T_trc(i+1) = floor(T_act(i+1)*10^5)/10^5
    TE(i) = abs(T_act(i+1)-T_trc(i+1))
    e_x_cal = e_x_cal + T_trc(i+1)
end
e_x_act = exp(-10)
disp(e_x_act,'actual e^x = ',e_x_cal,'calculated e^x using roundoff = ',sum(TE),'Truncation Error = ')
disp('Here we can see the difference between calculated e^x and actual e^x this is due to trucation error (which is greater than final value of e^x ), so the roundoff error totally dominates the solution')