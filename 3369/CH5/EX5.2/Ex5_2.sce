//Chapter 5, Exmaple 2, page 173
//Calculate breakdown voltage
clc
clear
//(a)Based on equation 4.13
p = 101.3 // kPa
Ep = 2400.4/0.027
E = p*Ep
d = 1*10**-3 // 1 mm
Vs1 = E*d
printf("\n Part (a): based on equation 4.13")
printf("\n Breakdown voltage = %f V or %f kV",Vs1,Vs1*10^-3)

//(b)Corrsponding to an avelanche size of 10^8
p = 101.3 // kPa
Cp = Ep*0.027*p
Vs2 = (18.42 + (Cp*10**-3))/0.027
printf("\n Part (b):Corrsponding to an avelanche size of 10^8")
printf("\n Breakdown voltage = %f V or %f kV",Vs2,Vs2*10^-3)

//(b)According to criteria expressed by Equations 5.4 and 5.5
p = 101.3 // kPa
Vs3a = 9.4
Vs3b = 9.2
printf("\n Part (c):According to criteria expressed by Equations 5.4 and 5.5")
printf("\n Breakdown voltage = %f kV or %f kV",Vs3a,Vs3b)

//Answer may vary due to round off error

