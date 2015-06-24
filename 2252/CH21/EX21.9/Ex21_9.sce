
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
Vt=1100/sqrt(3)//terminal voltage,taken as reference phasor
Vt=pol2rect(Vt,0)
Ia=1200*1000/(3*Vt)//armature current
pf=.8//lagging power factor
phi=acosd(pf)
Ia=pol2rect(Ia,-phi)
Xq=1.2*j
Xd=1.8*j
//refer Fig.21.24 in the textbook, phasor OB in the direction of Ef is given as
OB=Vt+Ia*Xq
delta=29//power angle
Id=Ia*sin((delta+phi)*%pi/180)
Ef=mag(OB)+mag(Id)*mag(Xd-Xq)
mprintf("Excitation voltage Ef=%d V", round(Ef))
