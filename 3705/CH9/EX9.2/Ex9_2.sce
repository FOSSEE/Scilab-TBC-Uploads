
clear//

//Variable Declaration
dw=8 //Depth of wooden section in inches
da=0.4 //Depth og aluminium section in inches 
w=2 //Width of the section in inches
n=40*3**-1 //Modular Ratio
Ewd=1.5*10**6 //Youngs modulus of wood in psi
Eal=10**7 //Youngs Modulus of aluminium in psi
V_max=4000 //Maximum shear in lb
b=24 //Inches
L=72 //Length in inches
P=6000 //Load on the beam in lb

//Calculations
I=w*dw**3*12**-1+2*(n*w*da**3*12**-1+n*da*4.2**2) //Moment of Inertia in in^4

//Part 1
Q=(w*dw*0.5)*2+(n*da)*(dw*0.5+da*0.5) //First Moment in in^3
tau_max=V_max*Q*I**-1*w**-1 //Maximum Shear Stress in psi

//Part 2
delta_mid=(P*b)*(48*Ewd*I)**-1*(3*L**2-4*b**2)

//Result
printf("\n The maximum shear stress allowable is %0.0f psi",tau_max)
printf("\n The deflection at the mid-span is %0.4f in",delta_mid)
