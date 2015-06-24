
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
R2_dash=.16
s=.03
X2=.4
Z2_dash=R2_dash/s+X2*j//effective rotor impedance referred to stator
R0=200
Xm=20*j
Z=1/(1/R0+1/Xm+1/Z2_dash)//equivalent impedance
Z1=.15+.4*j//stator impedance
Zin=Z1+Z//total input impedance
V=400//applied voltage
//calculating stator current
V1=V/sqrt(3)//per phase stator voltage
I1=V1/Zin
[I1 theta1]=rect2pol(I1)
mprintf("Stator current=%f A at %f power factor lagging\n",I1,cos(theta1*%pi/180))
//calculating rotor current
I1=V1/Zin
E1=V1-I1*Z1
Iw=E1/R0//per phase core loss component of no load current
Im=E1/Xm//per phase magnetising current
I0=Iw+Im//no load current
I2_dash=I1-I0
[I2_dash theta2]=rect2pol(I2_dash)
mprintf("Per phase rotor current=%f A lagging by %f degrees\n",I2_dash,-theta2)
//calculating mechanical output power
P=I2_dash^2*R2_dash*(1-s)/s//mechanical power output per phase
Pout=3*P
mprintf("Total mechanical power output=%f kW\n",Pout/1000)
//calculating input power drawn by the motor
Pin=3*V1*mag(I1)*cos(theta1*%pi/180)
mprintf("Total input power drawn by the motor=%f kW\n",Pin/1000)
//answers vary from the textbook due to round off error
