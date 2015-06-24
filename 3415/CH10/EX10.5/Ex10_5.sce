//fiber optic communications by joseph c. palais
//example 10.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
//given
lambda=850*10^-9//spectral width in m
f_bw=0.01//fractional bandwidth 
OS=1*10^9//optic separation in short wavelength window and IF frequency in Hz
delta_lambda=lambda*f_bw//spectral separation in m
c=3*10^8//speed of light
delta_f1=c*delta_lambda/(lambda^2)//channel separation in GHz in WDM
delta_f2=OS*f_bw//channel separation in GHz in OFDM
mprintf('Channel separation for WDM system = %fx10^12Hz',delta_f1/10^12)//division by 10^12 to convert the result in the form x10^12
mprintf('\nChannel separation for OFDM = %fx10^7Hz',delta_f2/10^7)//division by 10^7 to convert the result in the form x10^7
