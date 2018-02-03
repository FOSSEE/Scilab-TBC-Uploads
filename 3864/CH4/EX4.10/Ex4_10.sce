clear
//

//Initilization of Variables
H=10 //mm //Height
A1=160*160 //mm**2 //area of square section at bottom
L1=160 //mm //Length of square section at bottom
b1=160 //mm //width of square section at bottom
A2=80*80 //mm**2 //area of square section at top
L2=80 //mm //Length of square section at top
b2=80 //mm //Width of square section at top
P=100 //N //Pull

//Calculations

//Consider a section at distance y from top.
//Let the side of square bar be 'a'
//a=L2+y*(H)**-1*(b1-b2)
//After further simplifying we get
//a=L2+8*y

//Moment of Inertia
//I=2*1*12**-1*a*(2)**0.5*(a*((2)**0.5)**-1)**3
//After further simplifying we get
//I=a**4*12**-1

//Section Modulus 
//Z=a**4*(12*a*(2)**0.5)**-1
//After further simplifying we get
//Z=2**0.5*a**3*(12)**-1 //mm**3

//Bending moment at this section=100*y N-mm
//M=100*10**3*y //N-mm

//But
//M=sigma*Z
//After sub values in above equation we get
//sigma=M*Z**-1
//After further simplifying we get
//sigma=1200*10**3*(2**0.5)**-1*y*((80+80*y)**3)**-1 .......(1)

//For Max stress df*(dy)**-1=0
//After taking Derivative of above equation we get
//df*(dy)**-1=1200*10**3*(2**0.5)**-1*((80+8*y)**-3+y(-3)*(80+8*y)**-4*8)
//After further simplifying we get
y=80*16**-1 //m

//Max stress at this level is
sigma=1200*10**3*(2**0.5)**-1*y*((80+8*y)**3)**-1

//Result
printf("\n Max Bending stress is Developed at %0.3f  m",y)
printf("\n Value of Max Bending stress is %0.3f  N/mm**2",sigma)
