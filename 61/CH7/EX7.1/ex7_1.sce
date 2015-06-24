//ex7.1
V_GS_off=-4;
I_DSS=12*10^-3;
R_D=560;
V_P=-1*V_GS_off;
V_DS=V_P;
I_D=I_DSS;
V_R_D=I_D*R_D;    //voltage across resistor
V_DD=V_DS+V_R_D;
disp(V_DD,'The value of V_DD required to put the device in the constant current area of operation of JFET')
