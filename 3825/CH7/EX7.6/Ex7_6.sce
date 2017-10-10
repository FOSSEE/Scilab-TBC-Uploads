clc
TA=27+273 //temperature in kelvin
TL=0+273//temperature in kelvin
T1=150+273//temperature in kelvin
mprintf("QL/Q1=%f\n",(TL*(T1-TA))/(T1*(TA-TL)))//ans vary due to roundoff error
mprintf("(Q2+QH)/Q1=%f",(TA*(T1-TL))/(T1*(TA-TL)))//ans vary due to roundoff error
