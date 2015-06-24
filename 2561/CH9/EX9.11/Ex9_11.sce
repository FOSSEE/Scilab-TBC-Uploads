//Ex9_11
clc
VIL=-1.475
disp("VIL= "+string(VIL)+" V") //  Minimum input voltage level for which output is maximum
VIH=-1.105
disp("VIH= "+string(VIH)+" V") //  Maximum input voltage level for which output is minimum
VOL=-1.63
disp("VOL= "+string(VOL)+" V") //  Minimum output voltage level for  maximum input level
VOH=-0.98
disp("VOH= "+string(VOH)+" V") //   Maximum output voltage level for   minimum input level
NML=VIL-VOL
disp("NML=VIL-VOL= "+string(NML)+" V") //  Low level noise immunities
NMH=VOH-VIH
disp("NMH=VOH-VIH= "+string(NMH)+" V") // High level noise immunities


