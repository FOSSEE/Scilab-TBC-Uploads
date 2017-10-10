//To determine the rise of temperature.
clc;
R_1=3.42                         //Resistance at room temperature,at 20 degree C(ohm)
R_2=4.22                         //Resistance at full load(ohm)
alpha=0.00426                    //Temperature coefficient
T_1=20                           //Room temperature(degree C)
T_2=(((R_2*(1+(alpha*T_1)))/R_1)-1)/alpha
R_t=T_2-T_1
disp(R_t,'Rise in temperature(degree C)')
