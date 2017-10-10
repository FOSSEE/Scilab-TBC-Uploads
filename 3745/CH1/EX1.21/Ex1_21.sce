// Ex 21 Page 363

clc;clear;close;
// Given
fc=25*10**6;//Hz
fm=400;//Hz
Vm=4;//V
del=10*10**3;//Hz
wc=2*%pi*fc;//rad/s
wm=2*%pi*fm;//rad/s
m=del/fm;//modulation index
mf=m;mp=m;//modulation index
printf("General equation of FM wave is:")
printf("\n v=%d*sin(%.2e*t+%d*sin(%d*t)",Vm,wc,mf,wm)
printf("\n\n General equation of PM wave is:")
printf("\n v=%d*sin(%.2e*t+%d*sin(%d*t)",Vm,wc,mp,wm)
// Changing modulating frequency
fm_new=2*10**3;//Hz
a=fm_new/fm;//increase in angular frequency
printf("\n\n Now equation of FM wave is:")
printf("\n v=%d*sin(%.2e*t+%d*sin(%d*t)",Vm,wc,mf,a*wm)
printf("\n\n Now equation of PM wave is:")
printf("\n v=%d*sin(%.2e*t+%d*sin(%d*t)",Vm,wc,mp,a*wm)
