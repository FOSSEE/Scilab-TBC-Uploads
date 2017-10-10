//Optical Fiber communication by A selvarajan
//example 11.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
BW=7//bandwidth in MHz
SNR=60//signal to noise ratio in dB
Pin=0//Launched power in dBm
Trise_source=4//risetime at source LED in ns
delta_lambda=1//spectra width in nm
lambda=1300;//operating wavelength in nm
c=2.998*10^5;//velocity of light in Km/sec
R=0.3//Detector PIN FET responsivity in A/W
Cdiode=3//diode capacitance in pf
trise_detector=5//risetime at detector in ns
F=2.1//amplifier noise figure in dB
Camp=2//amplifier capacitance in pf
L=2//minimum link length in Km
Lsplice=0.5//splice loss in dB/connector
NA=0.22//numerical aperture for GI/MM
BWGI=600//GI/MM fiber bandwidth in MHz F3dB_optical
Te=630//temperate in Kelvin
K=1.38064852 *10-23//boltzman constant in m2 kg s-2 K-1
//solution
Rload=1/(2*%pi*(Cdiode+Camp)*BW)*10^6//maximum load resistance in ohm Actual value
Rload=4300//approximated value in ohm
BWRx=1/(2*%pi*(Cdiode+Camp)*Rload)//receiver BW in Hz
SbyN=10^(SNR/10)//SNR in normal scale
Pmin=10*log10(sqrt(SbyN*4*K*Te*BW/(0.5*Rload*R^2)))//input power in W
L1=Pmin/0.2//power budget limited link length in Km
mprintf('Maximum permissible link length is =%fKm',L1);

Trise_required=(0.35/BW)*10^3//Bandwith budgetting rise time required is rise time required in ns//multiplication by 10^3 to convert msec to ns
Trise_receiver=2.19*Rload*(Cdiode+Camp)*10^-3//rise time of receiver in ns//multiplication by 10^3 to convert msec to ns
Trise_fiber=sqrt(Trise_required^2-Trise_receiver^2-Trise_source^2)//fiber dispersion in ns
//for GI
f3dB_electrical=0.71*BWGI;//3dB elctrical BW in MHzKm
t_intra_modal=1//intra modal dispersion in ns/Km
t_inter_modal=3//intermodal dispersion in ns/Km
t_fiber_GI=sqrt(t_intra_modal^2+t_inter_modal^2);//rise time of fiber in ns/Km
L2=Trise_fiber/t_fiber_GI//link length in Km
mprintf('\n Maximum permissible link length for GI is =%fKm',L2);
