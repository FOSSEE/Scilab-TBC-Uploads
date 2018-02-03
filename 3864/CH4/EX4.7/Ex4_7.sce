clear
//

//Initilization of Variables

F=12 //KN //Force at End of beam
L=2 //m //span

//Square section 
b=200 //mm //Width and depth of beam
d=200

//Rectangular section
b1=150 //mm //Width
d1=300 //mm //Depth
	
//Calculations

//Max bending Moment
M=F*L*10**6 //N-mm

//M=sigma*b*d**2
sigma=M*6*(b*d**2)**-1 //N/mm**2

//Let W be the central concentrated Load in simply supported beam of span L1=3 m
//MAx Moment
//M1=W*L1*4**-1
//After Further simplifying we get
//M1=0.75*10**6 //N-mm

//The section has  a moment of resistance
M1=sigma*1*6**-1*b1*d1**2

//Equating it to moment of resistance we get max load W
//0.75*10**6*W=M1
//After Further simplifying we get
W=M1*(0.75*10**6)**-1

//Result
printf("\n Minimum Concentrated Load required to brek the beam %0.2f  KN",W)
