clear ;
clc;
// Example 9.4
printf('Example 9.4\n\n');
printf('Page No. 260\n\n');

//(a) Design loss
T1 = 18;// Internal teemperature(specified as an Environmental temperature) in degree celcius
//From example 9.1
A = [150 200 40 75 75 200 40 1000 1000];// in m^2
U = [1.2 1.2 5.6 2 1.2 1.2 5.6 0.7 0.9];// in W/m-K
Qf = 58.3*10^3;// Fabric loss in production area in W
T2 = -3;// in degree celcius
s1 =0;
s2 = 0;
for i = [1:1:9]
    s1 = s1+A(i);
    s2 = s2+U(i)*A(i);
end
A_T = s1;// Total area in m^2
UA_T = s2;// sum of U*A in W/m-K (answer wrongly calculated in the book)

//From example 9.3
N_1 = 1.5;// Ventilation rate in the production area (air changes per hour)
V_P = 6000;// Voulme of production area in m^3

//As Qvent = C * (T1 - T2) & C = 0.33*N*V*(1 + ((UA_T)/(4.8*A_T)))
C = 0.33*N_1*V_P*(1 + ((UA_T)/(4.8*A_T)));
Q_vent = C * (T1 - T2);// in W
T_Q1 = Qf + Q_vent;// in W
printf('The total design loss is %.0f W \n',T_Q1) // (deviation in answer is due to error in calculation in the book)

//(b) Reduced heat loss
// The heat transfer coeffieint in this problem has been changed as U1
U1 = [0.44 0.44 2.8 2 0.44 0.44 2.8 0.44 0.9];//in W/m^2-K
T = [21 21 21 -3 21 21 21 21 21];// Temperature difference in degree celcius
s3 = 0;
s4 = 0;
for i = [1:1:9]
    s3 = s3+U1(i)*A(i);
    s4 = s4+U1(i)*A(i)*T(i);
end
U1A_T = s3;// in W/m-k (answer wrongly calculated in the book)
Q_loss = s4// in W


//As Qvent = C * (T1 - T2) & C = 0.33*N*V*(1 + ((UA_T)/(4.8*A_T)))
C = 0.33*N_1*V_P*(1 + ((U1A_T)/(4.8*A_T)))
Q_vent = C * (T1 - T2)// in W
T_Q2 = Q_loss + Q_vent// in W

Red = T_Q1 - T_Q2;// In W
printf('The reduction in loss is %.0f W',Red) // (deviation in answer is due to error in calculation in the book)






