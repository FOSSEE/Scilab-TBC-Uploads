clc
VB = 100
disp("VB = "+string(VB)+"V") //initializing value of sorce-drain voltage 
FSi=3*10^5
disp("FSi = "+string(FSi)+"V/cm") //initializing value of breakdown field of Si
FGaAs=4*10^5
disp("FGaAs = "+string(FGaAs)+"V/cm") //initializing value of breakdown field of GaAs
FSiC=3*10^6
disp("FSiC = "+string(FSiC)+"V/cm") //initializing value of breakdown field of SiC
Vsi = 10^7
disp("Vsi = "+string(Vsi)+"cm/s") //initializing value of saturation velocity of Si
VGaAs = 10^7
disp("VGaAs = "+string(VGaAs)+"cm/s") //initializing value of  saturation velocity of GaAs
VSiC = 2*10^7
disp("VSiC = "+string(VSiC)+"cm/s") //initializing value of saturation velocity of SiC
LBSi = VB/FSi
disp("The minimum channel length at which Si material will breakdown is ,LBSi = VB/FSi = "+string(LBSi)+"cm")//calculation
LBGaAs = VB/FGaAs
disp("The minimum channel length at which GaAs material will breakdown is ,LBGaAs = VB/FGaAs = "+string(LBGaAs)+"cm")//calculation
LBSiC = VB/FSiC
disp("The minimum channel length at which SiC material will breakdown is ,LBSiC = VB/FSiC = "+string(LBSiC)+"cm")//calculation
fT1 = Vsi/(2*%pi*LBSi)
disp("The corresponding cutoff frequency of silicon is ,fT(Si) = Vsi/(2*%pi*LBSi)= "+string(fT1)+"Hz")//calculation
fT2 = VGaAs/(2*%pi*LBGaAs)
disp("The corresponding frequency of GaAs is ,fT(GaAs) = VGaAs/(2*%pi*LBGaAs)= "+string(fT2)+"Hz")//calculation
fT3 = VSiC/(2*%pi*LBSiC)
disp("The corresponding cutoff frequency of SiC is ,fT(SiC) = VsiC/(2*%pi*LBSiC)= "+string(fT3)+"Hz")//calculation
