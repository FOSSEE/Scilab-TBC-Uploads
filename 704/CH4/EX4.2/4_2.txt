//Caption:In a three phase transformer Calculate the secondary line voltage at no load when windings star delta connected and delta star connected.
//Exam:4.2
clc;
clear;
close;
//when windings are star delta connected
V=3300;//the supply voltage(in Volts)
V_l1=V;//Primary line voltage in star delta conection
N_1=420;//turns on the primary side of the transformer
N_2=36;//turns on the secondary side of the transformer
V_p1=V_l1/(3)^(1/2);//Primary phase voltage in star delta connection
V_p2=V_p1*(N_2/N_1);//Secondary phase voltage in star delta connection
V_l2=V_p2;//Secondary line voltage when windings are star delta connected(in Volts)
disp(V_l2,'Secondary line voltage when windings are star delta connected(in Volts)=');
//when windings are delta star connected
V_P1=V;//Primary phase voltage(in Volts)
V_L1=V_P1;//Primary line voltage in delta star connection
V_P2=V_P1*(N_2/N_1);//Secondary phase voltage in delta star connection
V_L2=V_P2*(3)^(1/2);//Secondary line voltage when windings are delta star connected(in Volts)=;
disp(V_L2,'Secondary line voltage when windings are delta star connected(in Volts)=');