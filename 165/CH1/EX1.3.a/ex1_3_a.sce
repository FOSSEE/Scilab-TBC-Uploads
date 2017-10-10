//Example 1.3(a)
clc;
Vs=1000;            //Voltmeter Sensitivity
Fs=150;             //Scale of Voltmeter
Vt=80;              //Voltmeter reading
It=10*10^-3;        //milliammeter reading
//Circuit resistance neglecting milliammmeter resistance
Rt=Vt/It;
Rv=Vs*Fs;            //Voltmeter Resistance
Rx=Rv*Rt/(Rv-Rt);    //Value of unknown resistance
Pe=100*(Rx-Rt)/Rx;   //Percentage Error
printf('\nApparent value of unknown Resistance = %.2f kohm\n',Rt/1000)
printf('\nActual value of unknown Resistance = %.2f kohm\n',Rx/1000)
printf('\nPercentage error = %.2f Percent \n',Pe)