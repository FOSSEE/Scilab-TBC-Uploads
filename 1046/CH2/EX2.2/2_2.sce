//Exm[ple 2.2
//Page no. 15
//Given
//outer thickness of brickwork (to) & inner thickness (ti)
to=0.15    //m
ti=0.012   //m
//thickness of intermediate layer(til)
til=0.07   //m
//thermal conductivities of brick  and wood
kb=0.70    //W/m celcius
kw=0.18    //W/m celcius
//temp. of outside and inside wall
To=-15    //celcius
Ti=21     //celcius
//area
A=1       //m^2
//(a)solution
//Thermal resistance of brick  , wood and insulating layer
TRb=to/(kb*A)   //C/W
TRw=ti/(kw*A)   //C/W
TRi=2*TRb       //C/W
//Total thermal resistance
TR=TRb+TRw+TRi  //C/W
//Temp. driving force
T=Ti-To         //C
//Rate of heat loss
Q=T/TR
printf("Rate of heat loss is %f W\n",Q)
//(b)thermal conductivities of insulating layer
k=til/(A*TRi)
printf("thermal conductivities of insulating layer is %f W/m C",k)



