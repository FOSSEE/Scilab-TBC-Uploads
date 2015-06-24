//Ex2.3
V_p_in=156;    //Peak input voltage
V_p_pri=156;    //Peak voltage of primary of transformer
n=1/2;    //Turn ratio is 2:1
V_p_sec=n*V_p_pri;
V_p_out=(V_p_sec-0.7);
disp(V_p_out,'peak output voltage of half wave rectifier in volts')    //Peak output voltage