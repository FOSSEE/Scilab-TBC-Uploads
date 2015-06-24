Vm=60*5/18//speed of mobile in m/s
fc1=900*10^6//frequency of operation
fc2=1900*10^6//frequency of operation
c=3*10^8//speed of radio waves
Tf1=c/(2*fc1*Vm)
Tf2=c/(2*fc2*Vm)
printf('time between fades in sec at 900 Mhz= %.f ms',Tf1*10^(3));
printf('\ntime between fades in sec at 1900 Mhz= %.1f ms',Tf2*10^(3));
