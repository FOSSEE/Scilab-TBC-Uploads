
W1=15D+3//reading of first wattmeter
W2=-1.5D+3//reading of second wattmeter
W=W1+W2//total power fed to the load
mprintf("Total power fed to the load=%f kW\n",W/10^3)
phi=atand(sqrt(3)*(W1-W2)/W)
mprintf("Power factor angle, phi=%f degrees\nPower factor of load=%f", phi, cos(phi*%pi/180))
