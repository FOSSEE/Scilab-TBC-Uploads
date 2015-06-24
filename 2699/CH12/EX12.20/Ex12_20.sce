//EX12_20 Pg-40
clc 
clear
disp("when modulating voltage V=2.5 V")
V=2.5;//modulating voltage
fd1=5;// frequency deviation in kHz
R=fd1/V;//frequency deviation constant in KHz/V
printf("\n frequency deviation constant R=%.0f KHz/V \n",R)
disp("when modulating voltage V=7.5 V")
V=7.5;//new value amplitude of the modulating voltage
fd2=R*V//new frequency deviation in kHz
printf("\n Therefore frequency deviation f=%.0f kHz \n",fd2)
disp("when modulating voltage V=10 V")
V=10;//new value amplitude of the modulating voltage
fd3=R*V//new frequency deviation in kHz
printf("\n Therefore frequency deviation f=%.0f kHz \n",fd3)
fm=0.5;//modulation frequency in kHz ie 0.5kHz=500Hz
mf1=fd1/fm;           
mf2=fd2/fm;
fm1=.25//new modulation frequency in kHz ie 0.25kHz=250Hz
mf3=fd3/fm1;
printf(" \n modulation index \n mf1=%.0f \n mf2=%.0f \n mf3=%.0f \n",mf1,mf2,mf3)
