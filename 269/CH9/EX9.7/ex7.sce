Syms t,s
disp('C1= C2=8 microfarad,R1=9 megaohm,R2=5 megaohm,V0=75 volts')
disp('i2(s) the current through resistor R2 is')
disp('i2(s)=0.208*10^-6/(s+0.045)(s+.0077)')
[a]=pfss((.208*10^-6*s^0)/(s+0.045)*(s+.0077))
b=ilt(a(1),s,t)
//c=ilaplace(a(2),s,t)
d=b
disp(d,"By thevenins theorem the current is ")
