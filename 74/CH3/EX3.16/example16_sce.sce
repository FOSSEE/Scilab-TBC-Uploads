//chapter 3
// example 3.16
// page 149
// Vout=2Vin1-3Vin2+4Vin3-5vin4 
Rf1=100*10^3
// Vout1=-(Rf1/R1Vin1+Rf1/R3Vin3)
R1=Rf1/2;// Rf1/R1=2  comapring the cofficient
R3=Rf1/4;
Rf2=120*10^3;
R2=Rf2/3;
disp(R1,R2)

// Vout2=-(Rf2/R2Vin1+Rf2/R4Vin3)

R4=Rf2/5;
disp(R2,R4)
// output of subtracter is Vout=Vout2-Vout1