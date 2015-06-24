
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
//applied voltage per phase is taken as the reference phasor
Va=1//applied voltage per phase in p.u.
pf=.8//lagging power factor
theta=acosd(pf)
Ia=pol2rect(1,-theta)//armature current per phase
Xq=.4*j
Xd=.8*j
OC=Va-Ia*Xq
[OC alpha]=rect2pol(OC)
delta=-alpha//power angle
Id=Ia*sin((theta-delta)*%pi/180)
Ef=OC-mag(Id)*mag(Xd-Xq)//armature resistance is neglected
mprintf("Excitation voltage per phase is %f p.u. lagging the applied voltage by %f degrees\n",Ef,delta)
//calculating power due to excitation
Pf=Va*Ef*sin(delta*%pi/180)/mag(Xd)
mprintf("Per phase power developed due to field excitation is %f p.u.\n",Pf)
//calculating power due to saliency
Pr=Va^2*mag((Xd-Xq)/(2*Xd*Xq))*sin(2*delta*%pi/180)
mprintf("Per phase power developed due to saliency of the motor is %f p.u.\n",Pr)
//answers vary from the textbook due to round off error
