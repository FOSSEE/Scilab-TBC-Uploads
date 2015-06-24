//Ex 4.11
clc;clear;close;
format('v',11);
VCO=200;//ppm(VCO stability)
fc=5.1;//MHz
ft_old=91.8;//MHz
k0=10;//kHz/V
kd=2;//V/kHz
f2=30.6;//MHz
fc=fc*10^6+(VCO*10^-6*fc*10^6);//Hz(with feedback loop open)
N1=2;N2=3;
f2_new=N1*N2*fc;//Hz
df2=f2_new-f2*10^6;//Hz(Frequency drift)
ft=N2*f2_new/10^6;//MHz(Transmit frequency)
df2_reduced=df2/(1+N1*N2*kd*k0);//Hz(reduced frequency drift)
df2_reduced=round(df2_reduced);//Hz
disp(df2_reduced,"Reduced frequency drift(Hz)");
f2dash=f2*10^6+df2_reduced;//Hz(New transmit frequency of antenna)
ftnew=f2dash*N2;//Hz
disp(ftnew,"New transmit frequency of antenna(Hz)")
old_drift=ft*10^6-ft_old*10^6;//Hz
new_drift=ftnew-ft_old*10^6;//Hz
disp("The frequency drift at the antenna has been reduced from "+string(old_drift)+" Hz to "+string(new_drift)+" Hz. This fulfill the FCC requirements.")
