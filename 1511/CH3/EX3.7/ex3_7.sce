// Example 3.7 page no-167
clear
clc
Vdc=25
Idc=0.1
R=Vdc/Idc

Vc=Vdc+37.5

vm=Vc+(Idc/(4*50))
vrms=vm/sqrt(2)
vrms=60 ///approximated to
printf("\nVrms=%.0f V\n\nTherefore, a transformer with 60 - 0 -60V is chosen. \nThe ratings of the diode should be,\ncurrent of 125mA.and voltage = PIV = 2Vm = %.1f",vrms,169.2)
