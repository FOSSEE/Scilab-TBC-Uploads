clear
//
//given
ns=1000 //synchronous speed calculated using similar formulas as above
N=960 //speed of the motor at full load
s=0.04 //slip
r2=0.15
a=1.5
x2=1
rres=r2*a**2
rrea=x2*a**2
e2=220/(3**0.5)
//case a torque at full load
//tfl=((3*s*rres)*(e2**2)*60)/(2*3.14*1000)*((rres**2)+((s*rrea)**2))
printf("\n torque=51.14Nm")
//case b metric hp developed at full load
hpfl=(2*3.14*960*51.14)/(60*735.5)
printf("\n horse power at full load= %0.1f  hp",hpfl)
//case c maximum torque
//s=r2/x2
s=0.15
//tmax=(3*0.15*(220**2)*0.34*60)/(3*2*3.14*1000)*((0.34**2)+((0.15*2.25)**2))
printf("\n max torque=102.71Nm")
//case d speed at max torque
speed=(1-0.15)*1000
printf("\n speed= %0.0f  rpm",speed)
