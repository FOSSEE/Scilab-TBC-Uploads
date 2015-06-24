
//Given Data
clc;
Im=100e-6;// FSD=100 micro amps
e=1;// specified accuracy 
//calculation
for n=1:2
    I=Im/n;//indicated current
    Ie=(e/100)*Im;//error current
    Imax=I+Ie;//actual measured maximum current
    Imin=I-Ie;//actual measured minimum current
    eI=(Ie/I)*100;//Percentage error in the measured currrent
    printf("At %.1f FSD\n",1/n);
printf("Actual measured current=%d to %d micro-A\n",Imin*(1e+6),Imax*(1e+6));
printf("error=(+/-)%d persent of measured current\n",eI);
printf("\n");
end
//result
// At 1.000000 FSD
//Actual measured current=99 to 101 micro-A
//error=(+/-)1 persent of measured current

//At 0.500000 FSD
//Actual measured current=49 to 51 micro-A
//error=(+/-)2 persent of measured current
