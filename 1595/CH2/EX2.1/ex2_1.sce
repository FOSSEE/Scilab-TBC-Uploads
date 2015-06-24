// Amplitude Modulation-Transmission  : example 2-1 : pg(74 & 75)
//upper sideband is equal to the sum of carrier and intelligence frequencies
c=1.4*10^6;
m1=20;
m2=10*10^3;
Ur1=c+m1;
Ur2=c+m2;
Lr1=c-m1;
Lr2=c-m2;
//range of upper sideband(usb)
printf("\nupper sideband will include frequencies from  %.f Hz",Ur1 ); 
printf("\nto \n %.f Hz",Ur2);
//range of lower sideband (lsb)
printf("\nlower sideband will include frequencies from  %.f Hz",Lr1);
printf("\nto \n %.f Hz",Lr2);