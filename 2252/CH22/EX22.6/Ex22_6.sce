
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction


j=%i
Va=400/sqrt(3)//applied voltage per phase
Zs=.5+j*4//synchronous impedance per phase
pf=1//power factor
Ia=15
Ef=Va-Ia*Zs
[Ef delta]=rect2pol(Ef)
mprintf("Excitation voltage is %f V and power angle is equal to %d degrees", Ef,-delta)

