//Example 6.6.9: load current is continuous or not,Average output current , maximum and minimum steady state output current and  RMS values of first and second harmonics of the load current
clc;
clear;
close;
//given data :
format('v',6)
V=220;//in volts
La=5;// in mH
Eb=24;//in volts
Ra=1;// in ohm
T=2;//in m-sec
D=0.6/2;
D_dash=(La/(T*Ra))*log(1-((Eb/V)*(1-exp((T*Ra)/La))));
disp("part (c)")
disp("As D = "+string(D)+"% is greater then D_dash = "+string(D_dash)+"% so load current is continous")
disp("part (d)")
Io=((D*V)-Eb)/Ra;
disp(Io,"Average output current,Io(A) = ")
I_max=(V/Ra)*((1-exp(-(D*T*Ra)/La))/(1-exp(-(T*Ra)/La)))-(Eb/Ra);
disp(I_max,"Maximum steady state putput current,I_max(A) = ")
I_min=(V/Ra)*((1-exp((D*T*Ra)/La))/(1-exp((T*Ra)/La)))-(Eb/Ra);
disp(round(I_min),"Minimum steady state output current,I_min(A) = ")
disp("part (e)")
C1_rms=((2*V)/(%pi*sqrt(2)))*sin(%pi*D);// in volts
C2_rms=((2*V)/(2*%pi*sqrt(2)))*sin(2*%pi*D);// in volts
Z1=((Ra^2+(2*%pi*La*10^-3*(1/(T*10^-3)))^2)^(1/2));//
Z2=((Ra^2+(2*2*%pi*La*10^-3*(1/(T*10^-3)))^2)^(1/2));//
Ifl=C1_rms/Z1;//in amperes
Ifl1=C2_rms/Z2;//in amperes
disp(Ifl,"fundamental component of load current in amperes is")
disp(Ifl1,"second harmonic component of load current in amperes is")
