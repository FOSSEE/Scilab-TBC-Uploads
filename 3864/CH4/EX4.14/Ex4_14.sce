clear
//

//Initilization of Variables

L=6000 //mm //Span of beam
W=20*10**3 //N //Load
sigma=8 //N/mm**2 //Stress
b=200 //mm //Width of section
d=300 //mm //Depth of section

//Calculations

//let x be the distance from left side of beam

//Bending moment
//M=W*2**-1*x //Nmm   .......(1)

//But M=sigma*Z   ..........(2)

//Equating equation 1 and 2 we get
//W*2**-1*x=sigma*Z    ............(3)

//Section Modulus 
//Z=1*6*b*d**2   ...............(4)

//Equating equation 3 and 4 we get
//b*d**2=3*W*x*sigma**-1 .............(5)

//Beam of uniform strength of constant depth
//b=3*W*x*(sigma*d**2)    

//When x=0
b=0

//When x=L*2**-1
b2=3*W*L*(2*sigma*d**2)**-1 //mm

//Beam with constant width of 200 mm

//We have
//d=(3*W*x*(sigma*d)**-1)**0.5
//thus depth varies as (x)**0.5

//when x=0
d1=0

//when x=L*2**-1
d2=(3*W*L*(2*sigma*200)**-1)**0.5 //mm

//Result
printf("\n Cross section of rectangular beam is: %0.2f  mm",b2)
printf("\n                                     : %0.2f  mm",d2)
