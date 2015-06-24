
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
Nr=1420
s=(Ns-Nr)/Ns
Xm=70
R2_dash=3.75
X2_dash=1.75
Zf=(Xm*%i/2)*(R2_dash/(2*s)+%i*X2_dash/2)/(R2_dash/(2*s)+%i*(Xm+X2_dash)/2)//forward impedance
Zb=(%i*Xm/2)*(R2_dash/(2*(2-s))+%i*X2_dash/2)/(R2_dash/(2*(2-s))+%i*(Xm+X2_dash)/2)//backward impedance
Z1=2.5+%i*1.5
Zin=Z1+Zf+Zb//input impedance
//calculating input current
V1=pol2rect(230,0)
I1=V1/Zin
[I1 theta]=rect2pol(I1)
mprintf("Input current drawn by the motor is %f A, lagging the applied voltage by %f degrees\n", I1,-theta)
//calculating input power
Pin=mag(V1)*I1*cos(theta*%pi/180)
mprintf("Power input=%f W\n", Pin)
//calculating mechanical power developed
Pgf=I1^2*real(Zf)
Pgb=I1^2*real(Zb)
Pm=(Pgf-Pgb)*(1-s)
mprintf("Mechanical power developed=%f W\n", Pm)
//calculating resultant torque developed
omega_s=2*%pi*Ns/60
T=(Pgf-Pgb)/omega_s
mprintf("Resultant torque developed=%f N-m\n",T)
//calculating efficiency
Prot=35+60
Pout=Pm-Prot
e=Pout/Pin*100
mprintf("Efficiency=%f percent", e)
//answers vary from the textbook due to round off error
