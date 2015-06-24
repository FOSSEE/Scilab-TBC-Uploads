//ex7.12
R_1=2.2*10^6;
R_2=R_1;
V_DD=8;
R_S=3.3*10^3;
V_GS=(R_2/(R_1+R_2))*V_DD;    //FOR I_D=0A
V_G=V_GS;
disp(V_GS,'V_GS in Volts, at I_D=0A')
I_D=(V_G-0)/R_S;    //FOR V_GS=0V
disp(I_D,'I_D in Amperes,at V_GS=0V')
disp('Plotting load line using the value of V_GS=4V at I_D=0 and I_D=1.2mA at V_GS=0V, we find the intersection of load line with transfer characteristic to get Q-point values of V_GS=-1.8V and I_D=1.8mA')