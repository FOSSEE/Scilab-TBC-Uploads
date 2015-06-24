// example:-11.1,page no.-589.
// program to determine the equivalent noise temperature of the amplifier.
T1=290;P1=-62;G=100;B=10^9;k=1.38*10^-23;
T2=77;P2=-64.7;Ts=450;
Y=P1-P2;  // Y-factor in db.
Y=10^0.27;
Te=(T1-Y*T2)/(Y-1);
Po=G*k*B*(Ts+Te);
Po=10*log10(Po/0.001); /// converting in to dBm.
disp(Te,'the equivalent noise temperature in kelwin = ')
disp(Po,'the total noise power out of the amplifier in dBm will be = ')