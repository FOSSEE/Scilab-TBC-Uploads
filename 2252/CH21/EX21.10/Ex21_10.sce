
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
//terminal voltage is taken as reference phasor and the rated quantities are taken as 1 p.u.
Vt=pol2rect(1,0)//terminal voltage
pf=.8//lagging power factor
phi=acosd(pf)
Ia=pol2rect(1,-phi)//armature current
Xd=.8*j
Xq=.4*j
//refer to Fig.21.24 in the textbook
OB=Vt+Ia*Xq
delta=14.47//power angle
Id=Ia*sin((delta+phi)*%pi/180)
Ef=mag(OB)+mag(Id)*mag(Xd-Xq)
mprintf("Excitation voltage per phase is %f p.u.", Ef)
