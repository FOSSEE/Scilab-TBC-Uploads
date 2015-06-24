
// example 3-14 in page 61
clc;
//Given Data
Eb=1.5;//battery rating in volts
Im=100e-6;// FSD=100 micro ampere
R=15e+3;// R1+Rx=15 K-ohm
//calculation
printf("meter indication when Rx=0 is %d micro-A (FSD)\n",(Eb/R+0)*10^6);// here Rx=0
for n=0.25:0.25:0.75//FSD's in ampere at which resistance Rx should be calculated
    Rx=(Eb/(n*Im))-R;// resistance in ohm
    printf("Rx for %.2f FSD=%.0f K-ohm \n",n,Rx/1000);
end
//result
// meter indication when Rx=0 is 100 micro A (FSD)
//Rx for 0.25 FSD=45 K-ohm 
//Rx for 0.5 FSD=15 K-ohm 
//Rx for 0.75 FSD=5 K-ohm 