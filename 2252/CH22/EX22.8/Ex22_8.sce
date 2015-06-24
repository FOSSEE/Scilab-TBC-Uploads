
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
//calculating new power angle
Va=400/sqrt(3)//applied voltage per phase
Pin=8.5D+3/3//power input per phase
pf=.8//lagging power factor
Ia=Pin/(Va*pf)//armature current per phase
theta=acosd(pf)
Ia=pol2rect(Ia,-theta)
Zs=4*j
Ef=Va-Ia*Zs
[Ef theta]=rect2pol(Ef)
delta=-theta
//the excitation voltage is increased by 50%
Ef_dash=1.5*Ef
//as the power developed remains same
delta_dash=asind(Ef*sin(delta*%pi/180)/Ef_dash)
mprintf("The new power angle is %f degrees\n",delta_dash)
//calculating new armature current and power factor
Ef_dash=pol2rect(Ef_dash,-delta_dash)
Ia_dash=(Va-Ef_dash)/Zs
[Ia_dash theta]=rect2pol(Ia_dash)
mprintf("The armature current drawn from the supply is %f A and is now leading the applied voltage by %f degrees with power factor=%f(leading)\n",Ia_dash,theta,cos(theta*%pi/180))
//answers vary from the textbook due to round off error
