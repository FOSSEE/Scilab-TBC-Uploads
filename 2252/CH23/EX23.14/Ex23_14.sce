
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
Vl=220//line voltage
Vph=Vl/sqrt(3)//stator phase voltage
n=.65//ratio of no. of rotor winding turns to no. of stator winding turns
E2=n*Vph//phase voltage induced in the rotor winding at standstill
R2=.1//rotor resistance per phase
X2=.8//standstill reactance per phase
//at 5 % slip
s=5/100
X=s*X2//reactance per phase
Z2=R2+X*j//rotor impedance
e2=s*E2//rotor phase voltage
I2=e2/mag(Z2)
mprintf("Rotor current at 5 percent slip=%f A\n",I2)
//calculating rotor input
Prcu=3*I2^2*R2//total rotor copper losses
Pg=Prcu/s
mprintf("Rotor input=%f W\n",Pg)
//calculating total torque at 5% slip
Pm=Pg-3*I2^2*R2//mechanical power developed by the rotor
Ns=120*50/4//synchronous speed
Nr=Ns*(1-s)//speed of the rotor
T=60*Pm/(2*%pi*round(Nr))
mprintf("Total torque developed by the rotor at 5 percent slip=%f N-m\nTotal mechanical power at 5 percent slip=%f kW\n",T,Pm/1000)
//calculating rotor current at maximum torque
s_m=R2/X2//slip for maximum torque
I2m=s_m*E2/sqrt(R2^2+(s_m*X2)^2)
mprintf("Rotor current at maximum torque=%d A\n",round(I2m))
//calculating rotor input corresponding to maximum torque
Sm=3*round(I2m)^2*R2//total rotor copper losses
Pg=Sm/s_m
mprintf("Rotor input corresponding to maximum torque=%f W\n",Pg)
//calculating maximum torque
Pm=Pg-Sm
Nm=Ns*(1-s_m)
T=60*Pm/(2*%pi*round(Nm))
mprintf("Maximum torque=%f N-m\nSpeed at maximum torque=%d rpm\nMaximum mechanical power=%f kW",T,Nm,Pm/1000)
//answers vary from the textbook due to round off error
