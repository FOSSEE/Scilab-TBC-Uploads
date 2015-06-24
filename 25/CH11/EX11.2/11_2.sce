//example:-11.2,page no.-591.
// program to find the dynamic range of the amplifier.
G=20;F=3.5; // in db.
k=1.38*10^-23;To=290;B=2*10^9;
// output noise power => No=G*F*k*To*B.so in dbm it will be-
No=20+3.5+10*log10((k*To*B)/0.001);
DR=10-No;
disp(DR,'the dynamic range in dB = ')