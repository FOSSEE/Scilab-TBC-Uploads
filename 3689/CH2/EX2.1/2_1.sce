////
//Variable Declaration  Part a
vi = 20.0             //Initial volume of ideal gas, L
vf = 85.0             //final volume of ideal gas, L
Pext = 2.5            //External Pressure against which work is done, bar

//Calculations
w = -Pext*1e5*(vf-vi)*1e-3

//Results
printf("\n Part a: Work done in expansion is %6.1f kJ",w/1000)


//Variable Declaration  Part b
ri = 1.00             //Initial diameter of bubble, cm
rf = 3.25             //final diameter of bubble, cm
sigm = 71.99          //Surface tension, N/m

//Calculations
w = -2*sigm*4*%pi*(rf**2-ri**2)*1e-4

//Results
printf("\n Part b: Work done in expansion of bubble is %4.2f J",w)


//Variable Declaration  Part c
i = 3.20             //Current through heating coil, A 
v = 14.5             //fVoltage applied across coil, volts
t = 30.0             //time for which current is applied,s

////Calculations
w = v*i*t

//Results
printf("\n Part c: Work done in paasing the cuurent through coil is %4.2f kJ",w/1000)


//Variable Declaration  Part d
k = 100.0             //Constant in F = -kx, N/cm 
dl = -0.15            //stretch , cm

////Calculations
w = -k*(dl**2-0)/2

//Results
printf("\n Part d: Work done stretching th fiber is %4.2f J",w)

