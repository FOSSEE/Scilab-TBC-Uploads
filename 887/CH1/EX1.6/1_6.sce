clc
//ex1.6
V_s=10;      //source voltage
R=5;
V_x=-V_s;      //Voltage across R(applying KVL)
//the actual polarity is opposite to the reference, so we take polarity to be +ve at the top end of resistance
i_x=-V_x/R;      //ohm's law(-ve sign as V_x and i_x have references opposite to passive configuration)
i_y=-i_x;      //current through source
P_s=V_s*i_y;      //power for voltage source
P_R=-V_x*i_x;      //power for resistance(-ve sign as V_x and i_x have references opposite to passive configuration)
disp(V_x,'voltage across resistance in volts')
disp(i_x,'current through resistance in amperes')
disp(i_y,'current through source in amperes')
disp(P_s,'power for voltage source in watts')
disp(P_R,'power for resistance in watts')
if(V_x==-10&i_x==2&i_y==-2&P_s==-20&P_R==20) then,
    disp('Results are in agreement with those previously found in the textbook')
end

