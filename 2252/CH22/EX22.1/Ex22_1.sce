
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
Va=400/sqrt(3)//per phase applied voltage
Ef=Va//per phase excitation voltage
delta=4*2//equivalent electrical degrees by which the rotor is retarted
Xs=2//per phase synchronous reactance
Vt=pol2rect(Va,0)
Ef=pol2rect(Ef,-8)
Xs=pol2rect(2,90)
Ia=(Vt-Ef)/Xs
[Ia theta]=rect2pol(Ia)
mprintf("Armature current drawn by the motor is %f A, lagging the applied voltage by %f degrees", Ia, -theta)
