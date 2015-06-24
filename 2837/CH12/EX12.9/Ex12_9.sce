clc
clear
//Initialization of variables
tf=225 //F
a=190
b=0.043
ti=212 //F
//calculations
hc=a/(1-b*(tf-ti))
hcti=hc*1.25
//results
printf("For a flat copper plate, boiling film coefficient = %.1f Btu/sq ft hr F",hc)
printf("\n For an inclined copper plate, boiling film coefficient = %d Btu/sq ft hr F",hcti)
