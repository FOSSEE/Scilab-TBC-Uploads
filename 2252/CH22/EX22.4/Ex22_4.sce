
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
j=%i
//calculating per phase current drawn from the supply
Pout=100*746//output power
Va=500/sqrt(3)//per phase applied voltage
Zs=.06+j*.6//synchronous impedance per phase
e=.89//efficiency of motor at full load
Pin=Pout/e//input to the motor
pf=.8//leading power factor
Ia=Pin/(3*Va*pf)
theta=acosd(.8)
mprintf("Current drawn from the supply is %f A leading the applied voltage by %f degrees\n", Ia, theta)
//calculating excitation voltage per phase
Va=pol2rect(Va,0)
Ia=pol2rect(Ia,theta)
Ef=Va-Ia*Zs
[Ef delta]=rect2pol(Ef)
mprintf("Excitation voltage per phase is %f V\nPower angle=%f degrees\n", mag(Ef),-delta)
//calculating mechanical power developed Pm
Ra=.06//stator winding resistance per phase
Pm=Pin-3*mag(Ia)^2*Ra
mprintf("Mechanical power developed=%f W\n", Pm)
