clear
//
//

//Initilization of Variables

D=70 //mm //External Diameter
t=8 //mm //Thickness of pipe
L=2500 //mm //span 
sigma=150 //N/mm**2 //stress

//Calculations

//Internal Diameter 
d=D-2*t //mm

//M.I Of Pipe
I=%pi*64**-1*(D**4-d**4) //mm**4

y_max=D*2**-1 //mm
Z=I*(y_max)**-1 //mm**3

//Moment Carrying capacity
M=sigma*Z //N*mm

//Max moment int the beam occurs at the mid-span and is equal to
//m=P*L*4**-1

//Equating Max moment to moment carrying capacity we get,
//M=P*2.5*L*4**-1
//After substituting and simplifying we get
P=4*M*(L)**-1*10**-3 //N

//Result
printf("\n Max concentrated load that can be applied at the centre of span is %0.3f  KN",P)
