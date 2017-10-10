clc
//Example 26.4
//Mass of flywheel

//------------------------------------------------------------------------------

//Given data
E=2.7* 10^3
K=0.9
r=0.915
N1=200
w1=(2*%pi*N1)/60
N2=180
w2=(2*%pi*N2)/60

res3=mopen(TMPDIR+'3_mass_of_flywheel.txt','wt')

//Exact moment of inertia of rim
mfprintf(res3,'(a)Approximate mass of flywheel\n\tmr=2*K*E / r2*(w1^2 -w2^2)\n')
mr=2*K*E /(r^2* (w1^2 -w2^2))
mfprintf(res3,'\t\tmr=%0.1f kg\n\n',mr)

mfprintf(res3,'(b)Approximate total mass of flywheel\n\t=1.15*mr\n')
mfprintf(res3,'\t\t=%d kg\n\n',1.15*mr)

mfprintf(res3,'(c)Coefficient of speed fluctuation\n\t')
mfprintf(res3,'delta=w1-w2 /w\n')
w=190
delta=(N1-N2)/w
mfprintf(res3,'\tdelta=%0.3f',delta)

mclose(res3)
editor(TMPDIR+'3_mass_of_flywheel.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
