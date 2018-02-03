clear
//Compare the moment carrying capacity of the section given in example 10.3 with equivalent section of the same area but (i) square section (ii) rectangular section with depth twice the width and (iii) a circular section.

//
//variable declaration

A=180.0*10.0+380.0*10.0+180.0*10.0

//If ‘a’ is the size of the equivalent square section, 

a=(sqrt(A))       //mm

I=(a*(a**3))/12  //Moment of inertia of this section** mm^4

ymax=a/2

Z=I/ymax

f=150.0 

Mcc=f*Z          //Moment carrying capacity

MccI=136985000.0

Ratio=MccI/Mcc
printf("\n (i) Moment carryingcapacity of Isection/ Moment carryingcapacityof equivalent squaresection= %0.3f  ",Ratio)


//Equivalent rectangular section of depth twice the width. Let b be the width,Depth d = 2b. Equating its area to area of I-section,we get
b=sqrt(7400/2)

ymax=b

I=b*(((2*b)**3))/12
 
M=f*I/ymax


MccI=136985000

Ratio=MccI/M
printf("\n (ii) Moment carryingcapacity of I-section/ Moment carryingcapacityof equivalent squaresection= %0.3f  ",Ratio)

//Equivalent circular section. Let diameter be d.

d=sqrt(7400*4/%pi)

I=(%pi*(d**4))/64
ymax=d/2
Z=I/ymax
fper=(150)
M=fper*Z

MccI=136985000

Ratio=MccI/M
printf("\n (i) Moment carryingcapacity of Isection/ Moment carryingcapacityof equivalent squaresection= %0.3f  ",Ratio)
