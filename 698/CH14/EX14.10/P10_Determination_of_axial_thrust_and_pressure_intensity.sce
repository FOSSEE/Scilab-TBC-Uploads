clc
//Example 14.10
//Determination of axial thrust and pressure intensity

//------------------------------------------------------------------------------
//Given Data:
//Power to be transmitted
P=10000 //Watt
//Speed
N=1000 //rpm
//Outer and Inner diameters
Do=0.15 //m
Di=0.1 //m
Ro=0.15/2 //m
Ri=0.1/2 //m
// number of surfaces
n=6
//coefficient of friction
f=0.3
//------------------------------------------------------------------------------

// Using uniform wear theory
// Mean radius
Rm=(Ro+Ri)/2

// Torque(T)=power/angular velocity
T=(P*60)/(2*%pi*N)

// T=F*f*Rm*n
// Axial thrust F
F=T/(f*Rm*n)

//contact pressure at radius r:
//p=F/(2*%pi*(Ro-Ri)*r)
//maximum contact pressure(pmax) is at inner radius
pmax=F/(2*%pi*(Ro-Ri)*Ri)
//minimum contact pressure(pmin) is at outer radius
pmin=F/(2*%pi*(Ro-Ri)*Ro)
// average contact pressure
pavg=F/(2*%pi*(Ro-Ri)*Rm)

//------------------------------------------------------------------------------
//Printing result file to .txt
res10=mopen(TMPDIR+'10_determination_of_axial_thrust_and_pressure_intensity.txt','wt')
mfprintf(res10,"(a)Axial thrust required to transmit the power is %0.2f N\n",F)
mfprintf(res10,"(b)The pressure equation is:\n\tp=F/(2*pi*(Ro-Ri)*r)\n\n")
mfprintf(res10,"(c)\tMaximum contact pressure occurs at inner radius, and is equal to %0.3f MPa\n",pmax*(10^-6))
mfprintf(res10,"   \tMinimum contact pressure occurs at outer radius, and is equal to %0.3f MPa\n",pmin*(10^-6))
mfprintf(res10,"   \tAverage contact pressure is %0.3f MPa\n",pavg*(10^-6))
mclose(res10)
if (isdef('editor') | (funptr('editor')<>0)) then
  editor(TMPDIR+'10_determination_of_axial_thrust_and_pressure_intensity.txt')
end
//------------------------------------------------------------------------------
//---------------------------------End of program-------------------------------