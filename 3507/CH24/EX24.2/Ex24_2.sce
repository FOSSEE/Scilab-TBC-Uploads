//chapter24
//example24.2
//page533

VBB=10 // V
eta=0.65
VD=0.7 // V

stand_off_voltage=eta*VBB
peak_point_voltage=VD+eta*VBB

printf("stand off voltage = %.3f V \n",stand_off_voltage)
printf("peak point voltage = %.3f V \n",peak_point_voltage)
