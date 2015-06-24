//The ac Motor Control//
//Example 15.15//
V=415;//input operating voltage of cycloconverter in volts//
Pi=50;//input power of the cycloconverter in KVA//
PF=0.8;//input power factor//
A=0.785;//firing angle in radians//
I=(Pi*1000*sqrt(2))/(3*V*PF*cos(A));//input current to the converter in amp//
printf('input current to the converter=I=%famp',I);