//To Determine the parameters of the system regulation
//Page 468
clc;
clear;

//Base Value
S3phib=15; //in MVA
Vllst=69; //in kV
Vllp=13.2; //in kV
Vrrb=120;

Ztpu=%i*0.08; //Transformer impedance per unit length
VSTpuop=1.05*exp(%i*0); //Per Unit Maximum Subtransmission Voltage Off Peak
VSTpup=1.00*exp(%i*0); //Per Unit Maximum Subtransmission Voltage Peak
pftop=0.95; //Off Peak kilovoltageamperage power factor
Sop=0.25; //Off Peak kilovoltageamperage
pftp=0.85; //Off Peak kilovoltageamperage power factor
Sp=1.0; //Off Peak kilovoltageamperage
Regpu=5/(8*100); //Regulated percent volts for 32 steps
K=3.88*(10^-6); //Drop Constant
S=4000; // Peak Load in kVA
l=10; //Length of the feeder
//Case A
Rset=0;
Xset=0;
Vpmax=1.0417;
BW=0.0083;
VRRpu=(Vpmax-BW); //Setting of VRR
VRR=(Vpmax-BW)*Vrrb;
//Case B
IPpuop=(Sop/VSTpuop)*exp(%i*acosd(pftop)*%pi/180); //No Load Primary Current at substation Off Peak
VPpuop =VSTpuop-(IPpuop*Ztpu); //Highest Allowable Primary Voltage Off Peak
IPpup=(Sp/VSTpup)*exp(-1*%i*acosd(pftp)*%pi/180); //No Load Primary Current at substation Peak
VPpup =VSTpup-(IPpup*Ztpu); //Highest Allowable Primary Voltage  Peak

Step1=(abs(VPpuop)-VRRpu)/Regpu; //Off Peak Number Steps
//To find the positive step value
Step2=-1*(abs(VPpup)-VRRpu)/Regpu; // Peak Number Steps


//Case C
//At Peak Load Primary Voltages
MaxVpp=1.075; //Max
MinVpp=1.000; //Min

TVDpu=K*S*l/2; //Total Voltage Drop
MinVPpu=VRRpu-TVDpu;

//At Annual Peak Load Primary Voltages
APMaxVPpu=MaxVpp-BW; //Max
APMinVPpu=MinVpp+BW; //Min

//At no load Load Primary Voltages
NLMaxVPpu=Vpmax-BW; //Max
NLMinVPpu=APMinVPpu; //Min

printf('\na)The Setting of the VRR for the highest allowable primary voltage is %g V\n',VRR)
printf('b) The Maximum Number of Steps of buck and boost for:\n')
printf('Off Peak : %g steps\n',ceil(Step1))
printf('Peak : %g steps\n',ceil(Step2))
printf('c) At Annual Load, Significant Values on Voltage Curve\n')
printf('The Total Voltage Drop is %g pu V\n',TVDpu)
printf('The Minimum Feeder Voltage at the end of the feeder is %g\n',MinVPpu)
printf('The Minimum and Maximum Primary Voltages at Peak Load is %g pu V and %g pu V\n',APMaxVPpu,APMinVPpu)
printf('The Minimum and Maximum Primary Voltages at Peak Load is %g pu V and %g pu V\n',NLMaxVPpu,NLMinVPpu)


