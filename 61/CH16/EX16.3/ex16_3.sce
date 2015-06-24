//ex16.3
C1=0.1*10^-6;
C2=0.01*10^-6;
L=50*10^-3;    //in Henry
C_T=C1*C2/(C1+C2);    //total capacitance
f_r=1/(2*%pi*sqrt((L*C_T)));
disp(f_r,'frequency of oscillation in Hertz when Q>10')
Q=8;    //when Q drops to 8
f_r=(1/(2*%pi*sqrt((L*C_T))))*sqrt((Q^2/(1+Q^2)));
disp(f_r,'frequency of oscillation in hertz when Q=8')