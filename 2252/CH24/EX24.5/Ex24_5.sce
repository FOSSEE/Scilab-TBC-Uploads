
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
function[z]=pol2rect(r,theta)
    x=r*cos(theta*%pi/180)
    y=r*sin(theta*%pi/180)
    z=x+y*%i
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
f=50//frequency
P=4//no. of poles
Ns=120*f/P//synchronous speed
Nr=1420//motor speed
s=(Ns-Nr)/Ns
R1=2.5
X1=3.365
Xm=60.945
R2_dash=3.28
X2_dash=3.365
Zf=(Xm*%i/2)*(R2_dash/(2*s)+%i*X2_dash/2)/(R2_dash/(2*s)+%i*(Xm+X2_dash)/2)//forward impedance
Zb=(%i*Xm/2)*(R2_dash/(2*(2-s))+%i*X2_dash/2)/(R2_dash/(2*(2-s))+%i*(Xm+X2_dash)/2)//backward impedance
Z1=R1+%i*X1
Zin=Z1+Zf+Zb//input impedance
//calculating input current and power factor
V1=pol2rect(230,0)
I1=V1/Zin
[I1 theta]=rect2pol(I1)
mprintf("Input current drawn by the motor is %f A lagging the applied voltage by an angle of %f degrees, that is at %f pf lagging\n", I1,-theta,cos(theta*%pi/180))
//calculating input power
Pin=mag(V1)*I1*cos(theta*%pi/180)
mprintf("Power input=%f W\n", Pin)
//calculating torque developed
Pgf=I1^2*real(Zf)
Pgb=I1^2*real(Zb)
omega_s=2*%pi*Ns/60
T=(Pgf-Pgb)/omega_s
mprintf("Resultant torque developed=%f N-m\n",T)
//calculating output power
Pm=(Pgf-Pgb)*(1-s)//mechanical power developed
W0=220//power consumed under no load
I0=6.4//no load current
Prot=W0-I0^2*(R1+R2_dash/4)//rotational losses
Pout=Pm-Prot
mprintf("Output power developed=%f W\n", Pout)
//calculating efficiency
e=Pout/Pin*100
mprintf("Efficiency=%f percent\n", e)
//calculating air gap power
Pg=Pgf+Pgb
mprintf("Air gap power=%f W\n",Pg)
//calculating rotor copper losses
Prc=s*Pgf+(2-s)*Pgb
mprintf("Rotor copper losses=%f W",Prc)
//answers vary from the textbook due to round off error
