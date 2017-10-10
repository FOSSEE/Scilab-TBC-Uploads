clc;
clear;
//case1:
disp('To find no. of primary & secondary turns:')
Bm1=1.5;//Max flux density of primary in tesla
Vt1=10.7;//Terminal voltage of primary in volts
Bm2=1.46;//Max flux density of secondary in tesla
Vt2=10.46;//Terminal voltage of secondary in volts
V1=11000;//Primary RMS voltage in volts
V2=415;//Secondary RMS voltage in volts
P=300e3;//Input power in volt-amphere
N2=(V2)/(Vt2);//No.of turns in secondary
N1=(V1)/(Vt1);//No.of turns in primary
disp(N1,'No of turns in primary is')
disp(N2,'No of turns in secondary is')
//case2:
disp('To find rated current:')
I1=P/(V1);
I2=P/(V2);
disp(I1,'The primary rated current in amps is')
disp(I2,'The secondary rated current in amps is')
//case3:
disp('To find primary &secondary load impedance:')
Z1=(V1)/(I1);
Z2=(V2)/(I2);
disp(Z1,'The primary load impedance in ohms is')
disp(Z2,'The secondary load impedance in ohms is')
