clear
//
//

//Initilization of Variables

b1=200 //mm //Width at base
b2=100 //mm //Width at top

L=8 //m Length
P=500 //N //Load

//Calculations

//Consider a section at y metres from top

//At this section diameter d is
//d=b2+y*L**-1*(b1-b2)
//After Further simplifying we get
//d=b2+12.5*y //mm

//Moment of Inertia
//I=%pi*64**-1*d**4

//Section Modulus 
//Z=%pi*32**-1*(b1+12.5*y)**3

//Moment 
//M=5*10**5*y //N-mm

//Let sigma be the fibre stress at this section then
//M=sigma*Z
//After sub values in above equation and further simplifying we get
//sigma=5*10**5*32*%pi**-1*y*((b2+12.5*y)**3)**-1

//For sigma to be Max,d(sigma)*(dy)**-1=0
//16*10**6*%pi**-1*((b2+12.5*y)**-3+y*(-3)*(b2+12.5*y)**-4*12.5)
//After Further simplifying we get
//b2+12.5*y=37.5*y
//After Further simplifying we get
y=b2*25**-1 //m

//Stress at this section
sigma=5*10**5*32*%pi**-1*y*((b2+12.5*y)**3)**-1

//Result
printf("\n Stress at Extreme Fibre is max %0.2f  m",y)
printf("\n Max stress is %0.2f  N/mm**2",sigma)
