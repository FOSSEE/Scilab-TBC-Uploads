
W1=115D+3
W2=50D+3
//calculating input to motor
W=W1+W2
mprintf("Power input to the motor=%f kW\n", W/1000)
//calculating power factor
phi=atand(sqrt(3)*(W1-W2)/(W1+W2))
mprintf("Power factor angle, phi=%f degrees\nPower factor of load=%f A\n", phi, cos(phi*%pi/180))
//calculating line current
Il=W/(sqrt(3)*440*cos(phi*%pi/180))
mprintf("Line current drawn by the motor=%f A\n",Il)
//calculating efficiency
Pout=150D+3//output of motor
e=Pout/W*100
mprintf("Efficiency of the induction motor=%f percent",e )
