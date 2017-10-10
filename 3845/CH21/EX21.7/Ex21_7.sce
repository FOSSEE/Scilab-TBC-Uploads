//Example 21.7
R=1*10^3;//Resistance (ohm)
C=8*10^-6;//Capacitance (F)
tau=R*C;//Time constant (s)
printf('a.Time constant tau = %0.2f ms',tau*1000)
V_0=10*10^3;//Intial voltage (V)
V_f=5*10^2;//Final voltage (V)
V=0.368*V_0;//Voltage falls to 0.368 of V_0 after 8ms (V)
T=8*10^-3;//Time (s)
while V>V_f
    V=0.368*V;
    T=T+8*10^-3;
end//To find the time taken for voltage to decline to V_f
printf('\nb.Time taken = %0.1f ms',T*1000)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
