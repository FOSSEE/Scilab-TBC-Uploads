
// example 4-6 in page 100
clc;
// data give
Eb=1.5;// Full scale voltage in volts
R1=1e+3;//R1=1 K-ohm
//calculation
for n=1:2
    E=Eb*(n/3);// 1/3rd and 2/3rd value of full scale
    Rx=R1/((Eb/E)-1);
    printf("at %d/3 FSD, Rx=%d ohm\n",n,Rx)   
end
