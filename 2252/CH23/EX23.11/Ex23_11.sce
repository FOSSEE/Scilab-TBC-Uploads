
//calculating rotor copper losses
s=.04//slip of the motor
Pout=14.92D+3//output of the motor
Pfw=200//friction and windage losses
Prcu=s*(Pout+Pfw)/(1-s)
mprintf("Rotor copper losses=%d W\n",round(Prcu))
//calculating efficiency at full load
P=Pout+Pfw+Prcu+1620//stator input
e=Pout/P*100
mprintf("Efficiency at full load=%f percent\n",e)
//calculating line current
pf=.86//power factor of load
Vl=500//line voltage
Il=P/(sqrt(3)*Vl*pf)
mprintf("Line current=%f A\n",Il)
//calculating no of complete cycles of the rotor electromotive force per minute
f=50//supply frequency
f_r=s*f//frequency of rotor emf
n=f_r*60
mprintf("No of complete cycles of the rotor electromotive force per minute=%d\n",n)
//answer vary from the textbook due to round off error, also there is an error in value of stator input given in textbook 
