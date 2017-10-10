clear
//
r=2
i=2
i3=3 //obtained by applying current divider rule to figure
i4=1
req=1/(0.5+0.25+0.166) //1/2,1/4,1/6 values are converted to decimal form
printf("\n req= %0.1f  ohm",req)
i2=(4*i4/(6))
i1=(6*i2)/(req)
//tracing circuit cabc via 6 ohm resistor and applying ohms law,
vs=i1*i4+i2*6
printf("\n vs= %0.1f  V",vs)
