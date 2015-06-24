

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
s=3/100//slip
Rl=R2_dash*(1-s)/s//load resistance
Z1=.15+.4*j//stator impedance
Z2_dash=.16+.4*j//equivalent rotor impedance
Z=Rl+Z1+Z2_dash//total impedance per phase
Vph=400/sqrt(3)//applied voltage per phase
I2_dash=Vph/Z
R0=200
Xm=20
Iw=Vph/R0
Im=Vph/Xm
I0=Iw-Im*j
I1=I0+I2_dash
[I1 theta]=rect2pol(I1)
pf=cos(theta*%pi/180)
p=mag(I2_dash)^2*Rl//output power per phase
Pout=3*p
Pin=3*Vph*I1*pf
mprintf("By using approximate equivalent circuit, the values of different parameters are as under\nPer phase stator current=%f A\nPer phase rotor current=%f A\nOperating power factor=%f\nInput power=%f kW\nMechanical output power=%f kW\n",I1,I2_dash,pf,Pin/10^3,Pout/10^3)
//refer Fig. 23.16 in the textbook
Z2_dash=5.3+j*0.4
Z=(j*Xm)*Z2_dash/(j*Xm+Z2_dash)//equivalent impedance
Zin=Z1+Z//total input impedance
I1=Vph/Zin
I2_dash=I1*j*Xm/(j*Xm+Z2_dash)
[I1 theta]=rect2pol(I1)
pf=cos(theta*%pi/180)
Pout=3*(mag(I2_dash))^2*R2_dash*(1-s)/s
Pin=3*Vph*I1*pf
mprintf("By solving the problem using the circuit in Fig. 23.16 in the book, the values of different parameters are as under\nPer phase stator current=%f A\nPer phase rotor current=%f A\nOperating power factor=%f\nInput power=%f kW\nMechanical output power=%f kW\n",mag(I1),I2_dash,pf,Pin/10^3,Pout/10^3)
