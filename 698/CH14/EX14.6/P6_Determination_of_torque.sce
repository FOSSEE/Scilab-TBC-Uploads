clc
//exercise 14.6
//Determination of Torque transmitting capacity

//------------------------------------------------------------------------------
//Given Data:
//Outside diameter
Do=0.3//m
Ro=Do/2//m (outside radius)
//Inside diameter
Di=0.13//m
Ri=Di/2//m (inside radius)
//coefficient of friction
f=0.2
//Maximum allowable pressure
pmax=0.7*(10^6)//Pa
//Number of surfaces
n=2
//Axial force
F=2*%pi*pmax*Ri*(Ro-Ri)
//------------------------------------------------------------------------------

// Torque With Uniform Wear Theory
Tw=(1/2)*(f*F*n)*(Ro+Ri)

// Torque With Uniform Pressure Theory
Tp=(2/3)*(f*F*n)*(((Ro^3)-(Ri^3))/((Ro^2)-(Ri^2)))

//------------------------------------------------------------------------------
//Printing the result file to .txt
res6= mopen(TMPDIR+'/6_determination_of_torque.txt','wt');
mfprintf(res6,"(a) Considering uniform wear theory, the torque is %0.2f N-m\n\n",Tw)
mfprintf(res6,"(b) Considering uniform pressure theory, the torque is %0.2f N-m\n\n",Tp)
mfprintf(res6,'(c) From above two values of torque, it is evident that the uniform wear theory\ngives conservative result, which is better for designing of the clutch.\nAs for the new clutch where uniform pressure condition prevails, the torque capacity\nwill be more than designed and when the clutch becomes old,\n(where the uniform wear prevails) the clutch is still capable of transmitting required torque.')
mclose(res6);
editor(TMPDIR+'/6_determination_of_torque.txt')

//------------------------------------------------------------------------------
//------------------------------End of program----------------------------------