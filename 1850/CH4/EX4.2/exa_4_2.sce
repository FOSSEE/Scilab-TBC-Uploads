// Exa 4.2
clc;
clear;
close;
// Given data
Vin= 50;// in mV
Vin = Vin*10^-3;// in V
I_B_max= 200;// in nA
I_B_max=I_B_max*10^-9;// in A
I1=100*I_B_max;// in A(assumed)
Av=100;
R1= Vin/I1;// in Ω
disp(R1*10^-3,"The value of  R1 in kΩ is : ")
disp("Standard value of R1 in kΩ is ")
disp("2.2")
R1= 2.2;// kohm (standard value)
Rf= Av*R1;// in kohm
disp(Rf,"The value of Rf in kΩ is : ")
// R2 = R1 || Rf = R1 (approx)
R2= R1;// in kohm
disp(R2,"The value of R2 in kΩ is : ")
Av= 20*log10(Av);// in dB
C1= 100;// in pF
R1= 1.5;// in kΩ
C2= 3;// in pF
disp(Av,"Voltage gain in dB is : ");
disp(C1,"Value of C1 in pF is : ");
disp(C2,"Value of C2 in pF is : ");
disp(R1,"Value of R1 in kΩ is :")
