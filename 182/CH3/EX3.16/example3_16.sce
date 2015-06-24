
// example 3-16 in page65
clc;
//Given data
//the equivalent circuit is derived as shown in the fig3-24 from the R X 1 range ohmmeter circuit
E=1.5;// battery rating in volts
//calculation
for Rx=0:24:24,//Rx in ohm
   Ib=E/(Rx+14+((10*(9990+2875+3820))/(9990+2875+3820)));
  
   Im=Ib*(10/(10+9990+2875+3820));// meter current
   printf("meter current when Rx=%d ohm is %.2f micro-A\n",Rx,Im*1e+6);
end
