//caption:Find reading of voltmeter and percentage error when(a)sensitivity of voltmeter is 100 kilo ohm per volt(b)sensitivity of voltmeter is 500 kilo ohm per volt
//Ex5.10
clc
clear
close
Rl=50000//load resistance(in ohm)
S1=10000//sensitivity (in kilo ohm per volt)
S2=50000//sensitivity (in kilo ohm per volt)
Vi=10//input voltage(in V)
R=5//range of voltmeter(in V)
Vl=(Rl/(S1+Rl))*Vi
Vo=R*S1
Rth=((Rl*Vo)/(Rl+Vo))
V1=(Rth/(Rl+Rth))*Vi
disp(V1,'(a)reading of voltmeter(in V)=')
e=((R-V1)/R)*100
disp(e,'(a)error(in %)=')
Vc=R*S2
Rt=((Rl*Vc)/(Rl+Vc))
V2=(Rt/(Rl+Rt))*Vi
disp(V2,'(b)reading of voltmeter(in V)=')
eo=((R-V2)/R)*100
disp(eo,'(b)error (in %)=')