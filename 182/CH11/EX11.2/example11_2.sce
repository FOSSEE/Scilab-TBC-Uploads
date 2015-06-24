//to find the resistor values in fig 11-3
// example 11-2 in page 319
clc;
//data given
Vi=5; //input sine wave voltage in volt
VR3=[0.1 1];// range of voltage across resistor R3 in volt
IB=500D-9;// input current to the op-amp in ampere
//calculation
V=Vi-VR3(1);// with R1 and R2 in the circuit, V=VR1+VR2 in volt
I3=100D-6;// as I3>>IB, select I3=100  micro ampere
R3=VR3(1)/I3;// resistance in ohm
R=V/I3;//R=R1+R2 in ohm
//with R2 switched off the circuit
I3=VR3(2)/R3;// current in ampere
VR1=Vi-VR3(2);// voltage in volt
R1=VR1/I3;// here I3=I1, resistance in ohm
R2=R-R1;// resistance in ohm
printf("R1=%d K-ohm\nR2=%d K-ohm\nR3=%d K-ohm",R1/1000,R2/1000,R3/1000);
//result
//R1=4 K-ohm
//R2=45 K-ohm
//R3=1 K-ohm 