

//exapple 1.47
clc; funcprot(0);
// Initialization of Variable
RA=17+12/60+48/3600;
gst=9+26/60+12/3600;//GST on GMN
long=138/15+45/15/60;//longitude
lst=-long*9.85645/3600+9+26/60+12/3600;//LST on LMN
LST=17+12/60+48/3600;//local sidereal time
SI=LST-lst;
MI=-SI*9.8296/3600+SI;
LCT=7+47/60+02/3600;//local chronometer time
ce=LCT-MI;
disp(ce*3600,"chronometer error in (s):")
