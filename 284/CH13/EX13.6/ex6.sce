// Chapter 13_Optical Devices
//Caption_Photodiode
//Ex_6//page 616
Na=10^16
eps=8.85*10^-14;
Nd=10^16
Dn=25
Dp=10
tau_no=5*10^-7
e=1.6*10^-19
ni=1.5*10^10
tau_po=10^-7
VR=5     //reverse bias voltage
GL=10^21   //generation rate of excess carriers
Ln=(Dn*tau_no)^0.5
Lp=(Dp*tau_po)^0.5
Vbi=0.0259*log(Na*Nd/ni^2)
W=((2*eps/e)*((Na+Nd)/(Na*Nd))*(Vbi+VR))^0.5
JL=e*(W+Ln+Lp)*GL
printf('The steady state photocurrent density is %1.2f A/cm^2',JL)
