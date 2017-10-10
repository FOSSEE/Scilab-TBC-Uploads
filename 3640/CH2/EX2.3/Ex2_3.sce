clc
//the example below is an extension of Ex2_1 and Ex2_2
S1=36 //no of slots
q1=3 //no of phases
p=6 //no of poles
Nc=2 //no of turns per coil
L=0.25 //length of stator stack in metres
r=0.15 //radius of stator stack in metres
BImax=0.96 //peak value of air gap flux density in tesla
P=6 //no of machine poles
phi=(4*L*r*BImax)/P //flux per pole in webers
span=5 //span of each coil given by  no of slots
edps=30 //electrical degrees per slot in degrees
p=span*edps//coil pitch in degrees
Nc=2//turns of coil
kp=sin(((p/2)*%pi)/180) //pitch factor //degree being converted to radians before calculation
ns=1000 //machine speed in rev/min
p=6 //no of poles
f=(p*ns)/120 //frequency at given speed in Hertz
Ec=sqrt(2)*%pi*f*Nc*kp*phi//voltage induced at above frequency
n=S1/(q1*p)
mprintf("n=S1/(q1*p)=%f\n",n) //coils per group
edps=30 //electrical degrees per slot //equal to γ as per textbook
kd=(sin((n*edps*%pi)/(180*2)))/(n*sin((edps/2)*%pi/180)) //distribution factor of the machine //degree converted to radian for calculation
mprintf("kd=sin(n*γ/2)/n*sin(γ/2)=%f\n",kd)//ans may vary due to roundoff error
mprintf("|Egroup|=n*Ec*kd=%fV\n",n*Ec*kd)//ans may vary due to roundoff error
mprintf("|EΦ|=p*|Egroup|=%fV\n",p*n*Ec*kd)//ans may vary due to roundoff error
mprintf("sqrt(3)*EΦ=%dV\n",sqrt(3)*n*Ec*kd*p)//ans may vary due to roundoff error
stp=n*Nc*p //series turns per phase //equal to NΦ in textbook
mprintf("NΦ=n*Nc*p=%dturns\n",stp)
mprintf("|EΦ|=sqrt(2)*Π*NΦ*f*Φ*kp*kd=%fV",sqrt(2)*%pi*stp*f*kp*kd*phi) //ans may vary due to round off error //induced phase winding


