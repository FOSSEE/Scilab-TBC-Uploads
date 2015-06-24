//To Find feeder properties of TL and VDL
//Page 211
clc;
clear;

D=1000; //Load Density in kVA per sq miles
Vll=4.16; //Line to Lien voltage in kV
//From The Tables and Curves from the Theory
K=0.007;
//For TL
TLImax=230; //Maximum Feeder Current
TLSn=sqrt(3)*Vll*TLImax; //Maximum Load Per Feeder
TLn=4; //No of Feeders
TLTSn=TLn*TLSn; //Substation Load
TLl4=sqrt(TLSn/D); //Feeder Length
TLS=2*TLl4; //Total Spacing

TLVDn=2*K*D*(TLl4^3)/3; //TotalVoltageDrop in the main

//For VDL
VDLVDn=3; //Percent Voltage Drop
VDLl4=nthroot((3*VDLVDn/(2*K*D)),3); //Feeder Length
VDLS=2*VDLl4; //Station size
VDLSn=D*(VDLl4^2); //Maximum Load Per Feeder
VDLn=TLn; //Number Of Feeders
VDLTSn=VDLn*VDLSn; //Susbtation Load
VDLImax=VDLSn/(sqrt(3)*Vll); //Ampere Rating of the Main
R=VDLImax/TLImax; //Ampere Loading

printf('\na) For Thermally Limited \n')
printf('i) The Substation Size = %g kVA\n',TLTSn)
printf('ii) Substation Spacing = %g miles\n',TLS)
printf('iii) Maximum Load Per Feeder = %g kVA\n',TLSn)
printf('iv) The Voltage Drop is %g percent\n',TLVDn)

printf('\nb) For Voltage Drop Limited \n')
printf('i) The Substation Size = %g kVA\n',VDLTSn)
printf('ii) Substation Spacing = %g miles\n',VDLS)
printf('iii) Maximum Load Per Feeder = %g kVA\n',VDLSn)
printf('iv) Ampere Loading of the Main is %g pu\n',R)

//Note The Approximation to 750 kVA
