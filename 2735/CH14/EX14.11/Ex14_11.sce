clc
clear
//Initialization of variables
mfr=1
water=900 //gallons
t2=110 //F
t1=80 //F
cp1=1
//calculations
mfa=mfr*water*8.33*60
mfc=mfa/(60*0.075)
qa=mfa*(t2-t1)
dH=qa/(mfc*4.5)
dH2=mfr*cp1*(t2-t1)
H1=23.73
H2=5.08
f=3.309
lnmean=(H1-H2)/log(H1/H2)
dtt=(t2-t1)/lnmean
per=25
//results
printf("flow rate of air = %d lbm/hr.It is equal to %d cfm",mfa,mfc)
printf("\n Total heat transferred = %d Btu/hr",qa)
printf("\n Enthalpy = %.1f Btu/lbm dry air",dH)
printf("\n Using second method, Enthalpy = %.1f Btu/lbm",dH2)
printf("\n Performance factor = %.3f ",f)
printf("\n logrithamic mean enthalpy difference = %.2f . Estimated low percentage = %d low",dtt,per)
disp("The answers are a bit different due to rounding off error in textbook.")
