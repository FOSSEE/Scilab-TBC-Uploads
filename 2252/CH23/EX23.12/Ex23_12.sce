
//calculating slip
n=100//no. of complete alternations per minute of rotor emf
f_r=n/60//rotor frequency in Hz
f=50//supply frequency in Hz
s=f_r/f
mprintf("Slip of the motor=%f percent\n",s*100)
//calculating rotor speed
P=6//no. of poles
Ns=120*f/P//synchronous speed
Nr=(1-s)*Ns
mprintf("Rotor speed=%d rpm\n",round(Nr))
//calculating rotor copper losses per phase
P1=75D+3//rotor input
Prcu=P1*s
mprintf("Rotor copper losses per phase=%f W\n",Prcu/3)
//calculating mechanical power developed
Pm=P1-Prcu
mprintf("Mechanical power developed=%f kW\n",Pm/1000)
//calculating rotor resistance per phase
Ir=60//rotor current
Rr=Prcu/(3*Ir^2)
mprintf("Rotor resistance per phase=%f ohm",Rr)
//answers vary from the textbook due to round off error
