
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

j=%i
Pout=10D+3//output of the motor at full load
e=.85//efficiency at full load
Pin=Pout/e//input at full load
Zs=.4+j*3//synchronous impedance per phase
Va=400/sqrt(3)//per phase applied voltage
pf=.8//leading power factor
Ia=Pin/(3*Va*pf)
Ia=pol2rect(Ia,acosd(pf))
Ef=Va-Ia*Zs
[Ef delta]=rect2pol(Ef)
mprintf("Motor must be excited to a voltage of %f V per phase and the angle of retard is %f degrees\n", Ef,-delta)

