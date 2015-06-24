//The ac Motor Control//
//Example 15.15//
Vo=200;//input operating voltage of cycloconverter in volts//
Po=50*10^3;//input power of the cycloconverter in VA//
Io=100;//drawing current from motor in amp//
PF=Po/(3*Vo*Io);//load power factor//
printf('load power factor of motor=PF=%f',PF);