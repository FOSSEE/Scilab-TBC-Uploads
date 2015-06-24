//Ex17.5
V_IN=12.5;    //maximum input voltage in volts
R1=22;    //In Ohms
//Worst case of power dissipation is when V_OUT=0V
V_OUT=0;
V_R1=V_IN-V_OUT;    //Voltage across R1
P_R1=(V_R1*V_R1)/R1;    //maximum power dissipated by R1
disp(P_R1,'maximum power dissipated by R1 in WATTS')