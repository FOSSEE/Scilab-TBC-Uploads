//voltage standing wave ratio
//given
clc
Vmax=5//volts
Vmin=3//volts
VSWR=Vmax/Vmin//voltage standing wave ratio
VSWR_S=20*log10(VSWR)//VSWR IN db
VSWR_S=round(VSWR_S*100)/100///rounding off decimals
disp(VSWR_S,'THE voltage standing wave ratio in db:')//decibles
