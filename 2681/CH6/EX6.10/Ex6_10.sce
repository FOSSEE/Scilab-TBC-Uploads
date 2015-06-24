//voltage standing wave ratio
//given
clc
Vmax=50//volts
Vmin=35//volts
VSWR=Vmax/Vmin
VSWR_db=20*log10(VSWR)//db
VSWR_db=round(VSWR_db*1000)/1000///rounding off decimals
disp(VSWR_db,'the voltage standing wave ratio in decibles')//db
