clear
//

//Initilization of Variables

L=5000 //mm //Length of Beam
a=2000 //mm //Length of start of beam to Pt Load
b=3000 //mm //Length of Pt load to end of beam
A=150*250 //m**2 //Area of beam  
b=150 //mm //Width of beam
d=250 //mm //Depth of beam
sigma=10//N/mm**2 //stress
l=2000 //m //Load applied from one end

//Calculations

//Moment of Inertia
I=1*12**-1*b*d**3 //m**4

//Distance from N.A to end
y_max=d*2**-1 //m

//Section Modulus
Z=1*6**-1*b*d**2 //mm**3

//Moment Carrying Capacity
M=sigma*Z //N-mm

//Let w be the Intensity of the Load in N/m,then Max moment
//M_max=w*L**2*8**-1 //N-mm
//After substituting values and further simplifying we get
//M_max=w*25*100*8**-1

//EQuating it to moment carrying capacity,we get max intensity load
w=M*(25*1000)**-1*8*10**-3

//Part-2

//Let P be the concentrated load,then max moment occurs under the load and its value
//M1=P*a*b*L**-1 //N-mm

//Equting it to moment carrying capacity we get
P=M*1200**-1*10**-3 //N

//Result
printf("\n Max Intensity of u.d.l it can carry %0.3f  KN-m",w)
printf("\n MAx concentrated Load P apllied at 2 m from one end is %0.3f  KN",P)
