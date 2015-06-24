
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
f=50
P=4
Ns=120*f/P
//calculating excitation voltage and power angle
Va=400/sqrt(3)
Va=pol2rect(Va,0)
pf=1//power factor
Pin=3000//input to motor
Ia=Pin/(3*mag(Va))
Xs=8
Ef=mag(Va)-%i*Ia*Xs
[Ef theta]=rect2pol(Ef)
mprintf("Excitation voltage Ef=%f V, power angle=%f degrees\n", Ef,-theta)
//calculating torque developed
omega_s=2*%pi*Ns/60
T=3*mag(Va)*Ef/(Xs*omega_s)*sin(-theta*%pi/180)
mprintf("Mechanical torque developed T=%f N-m\n",T)
//calculating max torque developed
Tmax=3*mag(Va)*Ef/(Xs*omega_s)
mprintf("Max torque developed or pull out torque=%f N-m",Tmax)
