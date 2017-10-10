clc
//Example 7.10
//Angular displacement of flywheel

//------------------------------------------------------------------------------

//Given data
//Moment of Inertia
J=0.125 //kg-m^2 
//Torsional stiffness
Kt=1.176 // N-m/rad
//Torque
To=0.6 //N-m
//frequency
w=4 //rad/s
//Damping couple
Ct=0.4 //N-m

res10=mopen(TMPDIR+'10_angular_displacement_of_flywheel.txt','wt')
mfprintf(res10,'(a) Torsional amplitude of vibration is given by:\n')
mfprintf(res10,'\ttheta=To/sqrt((Kt-Jw2)^2+(Ct*w^2)^2)\n\n')

//Torsional amplitude:
theta=To/sqrt((Kt-(J* w^2))^2 + (Ct* w)^2 )
mfprintf(res10,'\ttheta=%0.4f rad\n\n',theta)

//Maximum Damping couple
Cmax=Ct*w*theta
mfprintf(res10,'(b) Maximum damping couple= Ct*w*theta = %0.4f N-m\n\n',Cmax)

mfprintf(res10,'(c)Phase angle phi =\n\ttan(phi)=(Ct*w)/(Kt-J*w^2)\n')
//Phase angle
phi=atand((Ct*w)/(Kt- J* w^2))
mfprintf(res10,'phi=%0.3f degrees',180+phi) //Adding 180 to make it positive angle

mclose(res10)
editor(TMPDIR+'10_angular_displacement_of_flywheel.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------