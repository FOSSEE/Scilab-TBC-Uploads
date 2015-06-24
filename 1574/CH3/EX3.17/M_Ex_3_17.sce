clc
//Chapter3: Modulation
//Example3.17, page no 171
//Given
gm=0.1e-3// trans-conductance variation A/V
C=0.5e-12// capactance between anode and grid
R=1e3// resistance
fo=10e6// oscillator freq
Vrms=1.414//AF RMS voltage 
Vp=sqrt(2)*Vrms//Peak voltage
Ct=100e-12//tank capacitance
deltaC=gm*C*R*Vp

deltaF=fo*(deltaC/(2*Ct))// maximum freq deviation
mprintf('The maximum freq deviation is: %d kHz',round(deltaF/1000))
