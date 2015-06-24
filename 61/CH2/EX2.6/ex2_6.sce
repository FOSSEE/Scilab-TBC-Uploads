//Ex-2.6
V_rms=12;    //rms secondary voltage
V_p_sec=sqrt(2)*V_rms;    //peak secondary voltage
V_th=0.7;                //knee voltage of diode
V_p_out=V_p_sec-2*V_th;    //in one cycle, 2 diodes conduct
PIV=V_p_out+V_th;        //applying KVL
disp('Peak output voltage in volts= ');
disp(V_p_out);
disp('PIV across each diode in volts= ');
disp(PIV)