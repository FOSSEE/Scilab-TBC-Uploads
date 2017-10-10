//Example 23.9
L=7.5*10^-3;//Inductance (H)
R=3;//Resistance (ohm)
tau=L/R;//Time constant (s)
printf('a.Time constant tau = %0.2f ms',tau*1000)
I_0=10;//Initial current (A)
I=0.368*I_0;//Current decreases to 0.368 times the initial value in tau seconds (A)
t=tau;//Time (s) 
while t<5*10^-3 
    I=0.368*I;//Current (A)
    t=t+tau;//Time (s)
end// To find decline in current with time
printf('\nb.Current = %0.2f A',I)
//Here we used two iterations as we know 5ms is twice the characteristic time tau. I=I_0*exp(-t/tau) can also be used to find the current at 5ms.
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest