// chapter 3
//example 3.18
// page 150, figure 3.55
Rf=10*10^3;R1=100*10^3;
Rf1=100*10^3;R11=10*10^3;
Vin1=1;// let suppose
Vin2=2
Vout1=(1+(Rf/R1))*Vin1;// 1st stage is non inverting amplifier
disp(Vout1)
// second stage there are two input Vout1 and Vin2 aplly superposition theorem
Vout2=-(Rf1/R11)*Vout1;
//with Vout1 grounded,Vin2 active ,it behave as non-inverting amplifier
Vout3=(1+(Rf1/R11))*Vin2;
Vout=Vout2+Vout3;
disp(Vout)