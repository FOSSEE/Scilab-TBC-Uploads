// Chapter 9_The bipolar transistor
//Caption_Non ideal effects
//Ex_6//page 377
DB=25
VBE=0.60
T=300
e=1.6*10^-19
NB=5*10^16     //doping concentration in base
NC=2*10^15     //doping concentration in collecor
XB=0.70*10^-4   //mettulurgical base width
ni=1.5*10^10     //intrinsic ion concentration
nBO=ni^2/NB
xb1=0.648*10^-4
Jc1=e*DB*nBO*exp(VBE/0.0259)/xb1
xb2=0.597*10^-4
Jc2=e*DB*nBO*exp(VBE/0.0259)/xb2
VCE1=2.6
VCE2=10.6
del_JC_VCE=(Jc2-Jc1)/(VCE2-VCE1)
Va=3.20/del_JC_VCE-2.6
printf('The early voltage is %1.0f V',Va)
