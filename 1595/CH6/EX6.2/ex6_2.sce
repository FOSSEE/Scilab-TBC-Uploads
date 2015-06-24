//Frequency Modulation - Reception : example 6-2 : (pg 272)
f=10*10^6;
f1=50*10^3;
f2=200*10^3;
x=f1*2;
y=f2*2;
printf("\nThe capture occurred at %.f Hz from the free-running VCO frequency.",f1);
printf("\nAssume symmetrical operation,which implies a capture range of %.f Hz",x)
mprintf("\nOnce captured the VCO follows the input to a %.f Hz deviation,implying a lock range of %.f Hz",f2,y);
