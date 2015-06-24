//Ex2.7
R_l=2200;    //load resistance in Ohm
C=50*10^-6;    //capacitance in Farad
V_rms=115;    //rms of primary
V_p_pri=sqrt(2)*V_rms;    //peak voltage across primary
n=0.1;    //turn ratio is 10:1
V_p_sec=n*V_p_pri;    //primary voltage across secondary
V_p_rect=V_p_sec-1.4    //unfiltered peak rectified voltage
//we subtract 1.4 because in each cycle 2 diodes conduct & 2 do not
f=120;    //frequency of full wave rectified voltage
V_r_pp=(1/(f*R_l*C))*V_p_rect;    //peak to peak ripple voltage
V_DC=(1-(1/(2*f*R_l*C)))*V_p_rect;
r=V_r_pp/V_DC;
disp(r,'Ripple factor')