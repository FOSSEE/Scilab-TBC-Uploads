clc
//ex13.5
R_B=200*10^3;
R_C=1*10^3;
V_CC=15;
B=300;      //beta value
//we proceed in such a way that the required values will be displayed according to the satisfied condition of the below three cases

//a)active region
V_BE=0.7;      //base to emitter voltage in active state
i_B=(V_CC-V_BE)/R_B;      //base current
i_C=B*i_B;      //collector current in active state
V_CE=V_CC-i_C*R_C;      //collector to emitter voltage
if((V_CE>0.2)&(i_B>0)) then,      //active state conditions
        disp(i_C,'collector current in amperes')
        disp(V_CE,'collector to emitter voltage in volts')
    end

//b)saturation region
V_BE=0.7;      //base to emitter voltage in saturation state
V_CE=0.2;      //collector to emitter voltage in saturation state
i_C=(V_CC-V_CE)/R_C;      //collector current
i_B=(V_CC-V_BE)/R_B;      //base current
if((B*i_B>i_C)&(i_B>0)) then,      //saturation state conditions
        disp(i_C,'collector current in amperes')
        disp(V_CE,'collector to emitter voltage in volts')
    end

//c)cut-off region
V_BE=15;      //no voltage drop across R_B in cut-off state
V_CE=15;      //no voltage drop across R_C in cut-off state
i_C=0;      //no collector current flows as there is no voltage drop
i_B=0;      //no base current flows as there is no voltage drop
if(V_BE<0.5) then,      //cut-off condition
    disp(i_C,'collector current in amperes')
    disp(V_CE,'collector to emitter voltage in volts')
    end
