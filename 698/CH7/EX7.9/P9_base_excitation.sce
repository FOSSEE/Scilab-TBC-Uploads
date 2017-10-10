clc
//Example 7.9
//Base_excitation

//------------------------------------------------------------------------------

//Given data

//Desired amplitude
Y=0.5*(10^-3) //m
//Desired frequency
f=6 //Hz
w=f*2*%pi //rad/s
//mass of the table
m=300/9.81 //kg


res9=mopen(TMPDIR+'9_base_excitation.txt','wt')
mfprintf(res9,'This is a forced, steady state vibration situation.\n\n')
mfprintf(res9,'There are 2 supporting springs, hence net stiffness Ke=2k\n')
mfprintf(res9,'Damping coefficient Ce = 0.05 Cc = 0.05*2*sqrt(Ke*m)')
mfprintf(res9,'\n\nThe expression for desired amplitude Y is\n')
mfprintf(res9,'\n\tY=Fo/sqrt((ke-m*w^2)^2+(Ce*w)^2)\n')
mfprintf(res9,'Y will be maximum at resonance, i.e., w=wn\n')
mfprintf(res9,'Thus the design condition is k=(1/2)m*w^2\n')

k=0.5*m*(w^2)

mfprintf(res9,'\tk=%0.2f kN/m\n',k* 10^-3)
mfprintf(res9,'\nAt resonance, Y=Fo/c*w')

Fo=(0.05*2*sqrt(2*k*m))*w*Y
mfprintf(res9,'\nThe peak solenoid force required is %0.2f N',Fo)

mclose(res9)
editor(TMPDIR+'9_base_excitation.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
