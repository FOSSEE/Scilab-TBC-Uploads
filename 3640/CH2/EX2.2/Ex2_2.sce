clc
//the example below is an extension of Ex2_1
L=0.25 //length of stator stack in metres
r=0.15 //radius of stator stack in metres
BImax=0.96 //peak value of air gap flux density in tesla
P=6 //no of machine poles
phi=(4*L*r*BImax)/P //flux per pole in webers
//above comes from Ex2_1
span=5 //span of each coil given by  no of slots
edps=30 //electrical degrees per slot in degrees
p=span*edps//coil pitch in degrees
mprintf("p=%d°\n",span*edps)
Nc=2//turns of coil
Kp=sin(((p/2)*%pi)/180) //pitch factor //degree being converted to radians before calculation
mprintf("Kp=sin(p/2)=%f\n",Kp) //the ans may vary due to roundoff error
mprintf("λcmax=Nc*Kp*Φ=%fWb turns\n",Nc*Kp*phi)//max flux linkage //ans may vary due to roundoff error
ns=1000 //machine speed in rev/min
p=6 //no of poles
f=(p*ns)/120 //frequency at given speed in Hertz
mprintf("f=%dHz\n",f)
mprintf("Ec=sqrt(2)*Π*f*Nc*kp*Φ=%fV\n",sqrt(2)*%pi*f*Nc*Kp*phi)//ans may vary due to roundoff error //voltage induced at above frequency





