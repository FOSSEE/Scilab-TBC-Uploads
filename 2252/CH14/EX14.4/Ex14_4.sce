
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
//calculating current in primary
Is=10//at 0.8 pf lagging
Ip_dash=Is*400/200//at 0.8 pf lagging
Ip_dash=pol2rect(Ip_dash,-acosd(.8))
Im=200/300//magnetizing current
Iw=200/600//active component of no load current
I0=Iw-Im*j//no load current
Ip=Ip_dash+I0
[Ip theta]=rect2pol(Ip)
mprintf("Current in primary is %f A, lagging at an angle of %f degrees\n",Ip,-theta)
//calculating terminal voltage
Ip=pol2rect(Ip,-theta)
Ep=Ip_dash*(.15+.37*j)
Es_dash=200-Ep
[Es_dash theta]=rect2pol(Es_dash)
Es=Es_dash*400/200
mprintf("Secondary terminal voltage=%f V, lagging at an angle of %f degrees",Es,-theta)
