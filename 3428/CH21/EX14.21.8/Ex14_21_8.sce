//Section-14,Example-4,Page no.-PC.16
//To calculate the temperature at which v_avg(N_2)=v_avg(He).
clc;
//v_avg=sqrt((8*K*T)/pi*m)
//v_avgHe=sqrt((8*K*330)/(pi*4))
//v_avgN_2=sqrt((8*K*T_2)/(pi*28))
T_1=330                     //(K)
K=1                       //K=1(let)
T_2=(8*K*T_1*%pi*28)/(%pi*4*8*K)          //(K)
disp(T_2,'Required temperature(K)')
