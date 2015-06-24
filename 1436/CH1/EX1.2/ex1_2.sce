// Example 1.2, page no-53
clear
clc

span=1000
accuracy=1/100
err=span*accuracy
printf("(a)\nAs error can be either positive or negative ,\n the probable error at any point on the scale = %d°C",err)
max_scale=1200
Range_instr=max_scale+span
printf("\n(b)\nRange of the Instrument = %d°C",Range_instr)
meter_reading=700
per_of_err=(err/meter_reading)*100
printf("\n(c)\nPercentage of Error = ± %.2f%% ",per_of_err)
