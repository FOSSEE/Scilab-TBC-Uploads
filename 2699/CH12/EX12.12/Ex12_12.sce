//EX12_12 Pg-12.30
clc
clear
fc=1000e3;//carrier  frequency 
fm1=300;//first audio frequency
fm2=800;//second audio frequency
fm3=1e3;//third audio frequency
fusb1=fc+fm1;//upper side band frequency
flsb1=fc-fm1;//lower side band frequency
fusb2=fc+fm2;//upper side band frequency
flsb2=fc-fm2;//lower side band frequency
fusb3=fc+fm3;//upper side band frequency
flsb3=fc-fm3;//lower side band frequency
printf("fusb1=%.1f kHz \n flsb1=%.1f kHz\n\n fusb2=%.1f kHz\n",fusb1*1e-3,flsb1*1e-3,fusb2*1e-3)
printf(" flsb2=%.1f kHz \n\n fusb3=%.1f kHz \n flsb3=%.1f kHz \n",flsb2*1e-3,fusb3*1e-3,flsb3*1e-3)
