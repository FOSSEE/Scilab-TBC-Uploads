clc
Vnl=27.3 //no load voltage in volts
Vfl1=24   //full load voltage at power factor 1 in volts
mprintf("(Vnl-Vfl/Vfl)=%f\n",(Vnl-Vfl1)/Vfl1) //ans may vary due to roundoff error
Vfl2=22.1 //full load voltage at power factor 0.7 in volts
mprintf("Voltage Regulation=%f",(Vnl-Vfl2)/Vfl1)




