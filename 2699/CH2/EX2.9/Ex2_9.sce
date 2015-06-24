//EX2_9 PG-2.36
clc
P1=500e-3;//rated power rating of the diode 
T1=27;//temperature in Degree Celsius
Df=4e-3;//Derating factor 
disp("At temperature T=27 degree C")
disp("For silicon diode Vf=0.7 V is constant ")
Vf=0.7;
If1=P1/Vf;
printf(" \n Therefore maximum forward current at T=27 degree C is %.4f A \n",If1)
disp("At temperature T=77 degree C")
T2=77;//temperature in degree celsius
P2=P1-(T2-T1)*Df;//rated power rating of the diode at T=77 degree C
If2=P2/Vf;
printf("\n Therefore maximum forward current at T=77 degree C is %.4f A",If2)
