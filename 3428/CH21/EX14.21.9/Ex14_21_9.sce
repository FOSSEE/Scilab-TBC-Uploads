//Section-14,Example-5,Page no.-PC.17
//To calculate the temperature at which v_rms(He)=v_rms(H2).
clc;
//v_rms=sqrt((3*K*T)/m)
//K=1(let)
T=200                //(K)   Given temperature
K=1
T_He=(3*K*T*4)/(3*K*2)
disp(T_He,'Required temperature(K)')
