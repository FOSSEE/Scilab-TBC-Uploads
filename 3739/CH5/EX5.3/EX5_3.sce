
//Chapter 5, Example 5.3, page 191
clc
//Initialisation
c=3*10**8                              //speed of light
f=10*10**6                             //frequency in Hz
e0=8.85*10**-12                        //permitivity of free space
er=10                                  //ground characteristics
s=0.005
d=30000
pt=200                                  //transmitter power in watt
gt=1                                     //gain of transmitter antenna
gr=1                                     //gain of receiver antenna
pi=3.14                                  //pi

//Calculation
h=c*f**-1                               //wavelength
e=er*e0                                 //epsilon
b=s/(2*pi*f*e)
b1=sqrt(er**2+b**2)
p=(pi*d)/(h*b1)                         //The answer provided in the textbook is wrong
i=((er*e0*2*3.14*f)/s)
b2=atan(i)                 
b3=b2*180/pi
a1=((2+0.3*p)/(2+p+0.6*p**2))
a2=sqrt(p/2)*(5*10**-82)*sin(-b3)
As=a1-a2                                       //attenuation function
pr=pt*gt*gr*h**2/(4*pi*d)**2
pr1=pr*(2*As)**2                            //The answer provided in the textbook is wrong

//Results
printf("Received signal power Pr = %.2f pW",(pr1*10**12))         //The answer provided in the textbook is wrong
