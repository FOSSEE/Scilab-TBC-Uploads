//ex:.2.1 (a)to find transit time (b)frequency at which the transit time is 10% of the signal period (c)signal voltage on the other end
l=0.1; //in meter
v=2e8; //in m/sec
tr=l/v; //in sec
 disp('the value of Transit time is='+string(tr)+'sec');
 T=10*tr;
 f=1/T; //in Hz
 disp('frequency='+string(f)+'Hz');
 A=1;
 vt=A*cos(%pi*2*f*(-tr));
 disp('the instateneous value of voltage signal at t=0 is 1V and at t=-tr is='+string(vt)+'V');
disp('The voltage at the other end of the line therefore is = 0V')

