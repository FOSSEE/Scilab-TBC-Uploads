//Chapter 2:Dynamics of Electric Drives
//Example 2
clc;

//Variable Initialization
J=10     //moment of inertia of the drive in kg-m2
mprintf("Passive load torque during steady state is : Tl=0.05*N in N-m")
mprintf("\nAnd load torque : T=100-0.1*N in N-m ")
mprintf("\nLoad torque when the direction is reversed T=-100-0.1*N  in N-m")

//Solution
mprintf("\nT-Tl=0")
mprintf("\n100-0.1*N-0.05*N=0\n")
N=100/0.15     //Required speed of the motor in rpm during steady state
N2=-100/0.15   //During reversal speed is in opposite direction
mprintf("\nJdWm/dt=-100-0.1*N-0.05*N during reversing")
mprintf("\ndN/dt=30/(J*pi)*(-100-0.15*N)")
mprintf("\ndN/dt=(-95.49-0.143*N)\n")
N1=N
N2=N2*0.95 //for speed reversal 
deff('y=f(x)','y=1/(-95.49-0.143*x)')
t=intg(N1,N2,f)

//Result
mprintf("\nHence Time of reversal is : %.2f s",t)
