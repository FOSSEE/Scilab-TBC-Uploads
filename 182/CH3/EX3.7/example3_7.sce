// To find the required multiplier resistance for the two given circuits
//Example3-7 in page 49
clc;
//Given data
V=[10 50 100];// voltage ranges in volt
Im=50e-6;// FSD=50 micro-A
Rm=1700;// coil resistance in ohm
//calculation
printf("for circuit as in figure 3-16(a)\n");
for n=1:3
    R=(V(n)/Im)-Rm;
    printf("R%d=%.4f M ohm\n",n,R/10^6);
end
printf("for circuit as in figure 3-16(b)\n");
R=zeros(1,3);
for n=1:3
    R(n)=(V(n)/Im)-Rm-R(1)-R(2);
    printf("R%d=%.4f M ohm \n",n,R(n)/10^6);
end
//result
// for circuit as in figure 3-16(a)
//R1=198300 ohm
//R2=998300 ohm
//R3=1998300 ohm
//for circuit as in figure 3-16(b)
//R1=198300 ohm 
//R2=800000 ohm 
//R3=1000000 ohm 