clc
//Chapter6
//Ex_9
//Given
//rms output voltage
Ic=2.5 // in mA
Rc=1000 //in ohms
beta=100
vs=1//in mV
Rs=50 // in ohms
r_be=beta*25/Ic //Ic in mA
gm=Ic/25 //Ic in mA
//Av=v_ce/v_be=gm*Rc
Av=gm*Rc
v_be=vs*(r_be)/(r_be+Rs)//in mV
v_ce=Av*v_be
disp(v_ce,"rms output voltage in mV is")
v_be=v_be*10^-3 //in volts
Ap=beta*Av
P_in=v_be^2/r_be
disp(P_in*10^9,"Input power in watts is")
P_out=P_in*Ap
disp(P_out*10^6,"output power in watts is")

