//clear//
//Caption: Program to find find magnetomotive force 'Vm' and reluctance 'R'
//Example9.7
//page 288
clc;
u0 = 4*%pi*1e-07 ;//free space permeability in H/m
ur = 1;//relative permeability
u = u0*ur;
dair = 2e-03; //air gap in toroid
dsteel = 0.3*%pi;
S = 6e-04; //area of cross section in square metre
B = 1; //flux density 1 tesla
N = 500; //number of turns
Rair = dair/(u*S); 
disp(Rair,'Reluctance in A.t/Wb Rair =')
phi = B*S;
disp(phi,'Magnetic Flux in weber phi =')
Vm_air = S*Rair;
disp(Vm_air,'mmf required for the air gap in A.t Vm_air =')
Hsteel = 200; //magnetic field intensity of steel in A/m
Vm_steel = Hsteel*dsteel;
disp(Vm_steel,'mmf required for the steel in A.t Vm_steel =')
disp(Vm_steel+Vm_air,'Totla mmf required for toroid in A.t Vm =')
I = (Vm_steel+Vm_air)/N;
disp(I,'Total coil current in Amps I =')
//Result
//Reluctance in A.t/Wb Rair = 2652582.4  
//Magnetic Flux in weber phi = 0.0006  
//mmf required for the air gap in A.t Vm_air = 1591.5494  
//mmf required for the steel in A.t Vm_steel = 188.49556  
//Totla mmf required for toroid in A.t Vm =   1780.045  
//Total coil current in Amps I =   3.56009   
