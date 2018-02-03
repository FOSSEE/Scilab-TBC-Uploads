clear
//

//Initilization of Variables

L=4000 //mm //span

//Rectangular Cross-section
b=100 //mm //Width
d=200 //mm //Thickness

F_per=10 //N/mm**2 //Max Bending stress
q_max=0.6 //N/mm**2 //Shear stress

//Calculations

//If the Load W is in KN/m

//Max shear Force
//F=w*l*2**-1 //KN
//After substituting values and further simplifying we get
//M=2*w //KN-m

//Max Load from Consideration of moment
//M=1*6**-1*b*d**2*F_per
//After substituting values and further simplifying we get
w=(1*6**-1*b*d**2*F_per)*(2*10**6)**-1 //KN/m

//Max Load from Consideration of shear stress
//q_max=1.5*F*(b*d)**-1 //N
//After substituting values and further simplifying we get
F=q_max*(1.5)*b*d //N

//If w is Max Load in KN/m,then
//2*w*1000=8000
//After Rearranging and Further simplifying we get
w2=8000*(2*1000)**-1 //KN/m

//Result
printf("\n Uniformly Distributed Load Beam can carry is %0.2f  KN/m",w)
