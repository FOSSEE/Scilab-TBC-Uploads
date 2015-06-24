

//exapple 1.44
clc; funcprot(0);
// Initialization of Variable
long=4+30/60;
i=long*9.8565/3600;//longitude
gst=14+38/60+12/3600;//GST on GMM
lst=gst-i;//LST on LMM
RA=7+36/60+21.24/3600;
LST=RA;
SI=LST-lst+24;
LCT=17+56/60+8.86/3600-1;//local chronometer time
i2=SI*9.8296/3600;
LMM=SI-i2;
ce=LCT-LMM;
disp(ce*3600,"chronometer error in (s):")
