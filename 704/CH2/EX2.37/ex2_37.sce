//Caption:In a dc machine calculate speed at which the induced emf will be 250 Volts and also calculate the increase in main flux of field in percentage for induced emf of 250 Volts and speed 700 rpm
//Exam:2.37
clc;
clear;
close;
E_1=220;//Primary emf(in Volts)
N_1=750;//Speed of the machine at 220 Volts
E_2=250;//Secondary emf(in Volts)
N_2=(E_2/E_1)*N_1;//Speed of the machine at which emf will be 250 Volts
disp(N_2,'Speed of the machine at which emf will be 250 Volts=');
N_3=700;//Speed of the machine when main field flux increase
E_3=250;//induced emf when flux increase(in Volts)
F_x=(E_3/E_2)*(N_2/N_3);//Ratio of flux when speed is N_3 and N_2
F=(F_x-1)*100;//Percentage change in flux for induced emf of 250 Volts and speed 700 rpm(in %)
disp(F,'Percentage change in flux when induced emf 250 Volts and speed 700 rpm(in %)=');