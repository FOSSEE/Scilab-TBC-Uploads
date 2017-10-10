//Example 1.3(b)
clc;
Vs=1000;            //Voltmeter Sensitivity
Fs=150;             //Scale of Voltmeter
Vt=30;              //Voltmeter reading
It=600*10^-3;        //milliammeter reading
//Circuit resistance neglecting milliammmeter resistance
Rt=Vt/It;
Rv=Vs*Fs;            //Voltmeter Resistance
Rx=Rv*Rt/(Rv-Rt);    //Value of unknown resistance
Pe=100*(Rx-Rt)/Rx;   //Percentage Error
printf('\nApparent value of unknown Resistance = %.2f ohm\n',Rt)
printf('\nActual value of unknown Resistance = %.4f ohm\n',Rx)
printf('\nPercentage error = %.4f Percent \n',Pe)