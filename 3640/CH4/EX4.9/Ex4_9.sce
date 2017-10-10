clc
vtap=0.8 //percantage voltage tap of compensator
hp=100 //rating of motor in horsepower,I hp=746 watts
n=1750 //rated speed of motor in rev/min
a=1/vtap //compensator turns ratio
V=2300 //voltage rating of induction motor in volts
I1=150 //current rating in amperes
mprintf("a=%f\n",a)
mprintf("Voltage applied at starting of motor=%fV\n",V/a)
I1start=I1/a
mprintf("I1start=(1840/2300)*150A=150/a=%fA\n",I1start)
IL=I1start/a
mprintf("IL=I1start/a=%fA\n",IL)
tfl=hp*5252/n
mprintf("τfl=(hp*5252)/(rev/min)=%flb-ft\n",tfl)//ans may vary due to roundoff error
t=1.2*tfl //120 percent of the full load torque in lb-ft
mprintf("τst=360/a*a=%flb-ft\n",t/(a*a))//ans may vary due to roundoff error







