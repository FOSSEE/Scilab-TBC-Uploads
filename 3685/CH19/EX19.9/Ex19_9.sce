clc
// Given that
p1 = 1 // Pressure in bar
T1 = 300 // Temperature in K
p4 = 9// Compressed pressure in bar
n = 1.3 // Polytropic index
R = 0.287 // Gas constant in kJ/kgK
cp = 1.042 // Heat capapcity in kJ/kgK
printf("\n Example 19.9\n")
p2 = sqrt(p1*p4)
T2 =T1*((p2/p1)^((n-1)/n))
Wc = (2*n/(n-1))*R*1*(T2-T1)
Wc_ = Wc/2
Q = 1*cp*(T2-T1)
Q_ = cp*(T1-T2)+Wc_
H = Q+2*Q_
printf("\n Compressor work = %f kJ/kg,\n Total heat transfer to the surrounding = %f kJ/kg",Wc_,H)
//The answers given in the book contain calculation error

