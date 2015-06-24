//To Determine the sequence impedance values
//Page 572
clc;
clear;

//Percent Impedances of the substation transformer
Rtp=1;
Ztp=7;
Xtp=sqrt((Ztp^2)-(Rtp^2)); 
Ztpu=Rtp+(%i*Xtp); //Transformer Impedance
Vll=12.47; //Line to Line voltage in kV
Vln=7.2; //Line to Neutral Voltage
V=240; //Secondary Voltage
St=7500; //Rating of the transformer in kVA
Sts=100; //Rating of Secondary Transformer
Ztp=Ztpu*((Vll^2)*10/St);
SSC=complex(.466,0.0293);
//From Table 10-7
Z1=0.0870+(%i*0.1812);
Z0=complex(0.1653,0.4878);

ZG=((2*Z1)+Z0)/3;//Impedance to Ground

Zsys=0 ; //Assumption Made
Zeq=Zsys+Ztp+ZG; //Equivalent Impedance of the Primary

PZ2=Zeq*((V/(Vln*1000))^2); //Primary Impedance reffered to secondary

//Distribution Tranformer Parameters
Rts=1;
Zts=1.9;
Xts=sqrt((Zts^2)-(Rts^2));
Ztspu=complex(Rts,Xts);

Zts=Ztspu*((V/1000)^2)*10/Sts; //Distribution Transformer Reactance

Z1SL=(60/1000)*SSC; //Impedance for 60 feet

Zeq1=PZ2+Zts+Z1SL; //Total Impedance to the fault in secondary

IfLL=V/abs(Zeq1); //Fault Current At the secondary fault point F



printf('\na) The Impedance of the substation in ohms\n')
disp(Ztp)
printf('b) The Positive And Zero Sequence Impedances in  ohms\n')
disp(Z1)
disp(Z0)
printf('c) The Line to Ground impedance in the primary system in ohms\n')
disp(ZG)
printf('d) The Total Impedance through the primary in ohms\n')
disp(Zeq)
printf('e) The Total Primary Impedance referred to the secondary in ohms\n')
disp(PZ2)
printf('f) The Distribution transformer impedance in ohms\n')
disp(Zts)
printf('g) the Impedance of the secondary cable in ohms\n')
disp(Z1SL)
printf('h) The Total Impedance to the fault in ohms\n')
disp(Zeq1)
printf('i) The Single Phase line to line fault for the 120/240 V three-wire service in amperes is %g A\n',IfLL)
