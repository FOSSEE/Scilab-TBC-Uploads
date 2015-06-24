// to calculate the minimum change detectable by the bridge
// example 7-6 in page 172
clc;
//Given data
P=3.5e+3; Q=7e+3; S=4e+3; R=2e+3; // bridge arm resistances in ohm
Eb=10;// supply voltage in volt
Ig=1e-6;//galvano meter reading in ampere
rg=2.5e+3;//galvanometer resistance=2.5 K-ohm
//calculations
r=((P*R)/(P+R))+((Q*S)/(Q+S));// internal resistance of the bridge in ohm
dVR=Ig*(r+rg);// open-circuit galvano meter voltage i,e VR-VS in volt
VR=Eb*R/(R+P);// voltage across resistance R in volt
VP=Eb-(VR+dVR);//voltage across resistance P in volt
IR=VP/P;// current through P which is equal to current through R in ampere
dR=((VR+dVR)/IR)-R;//Change in R value that the device can detect in ohm
printf("the minimum change in R which is detected by the bridge is %f ohm\n",dR);
//result
// the minimum change in R which is detected by the bridge is 5.466141 ohm