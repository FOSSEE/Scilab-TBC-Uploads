// Example 3.12 page no-173
clear
clc

vm=25
vp=35.4       //V
vdc=2*vp/%pi  //V
vrms=sqrt(vm^2-vdc^2)

rl=25
im= vp/rl
idc=2*im/%pi
irms=sqrt(1-idc^2)
printf("\nVdc=%.1f V\nVrms=%.2f V\nIm=%.2f A\nIdc=%.2f A\nIrms=%.3f A",vdc,vrms,im,idc,irms)
