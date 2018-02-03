clear
//
//

//Initilization of Variables

d_o=500 //mm //Outer Diameter
r_o=250 //mm //Outer Radius
d1=300 //mm //Inner Diameter
r1=150 //mm //Inner Radius
d2=400 //mm //Junction Diameter
E=2*10**5 //N/mm**2 //Modulus ofElasticity
alpha=12*10**-6 //Per degree celsius
dell_d=0.2 //mm
dell_r=0.1 //mm

//Calculations

//Let p be the radial pressure developed at junction
//Let Lame's Equation for internal cyclinder be
//p_x=b*(x**2)**-1-a   ................................(1)
//F_x=b*(x**2)**-1+a     ...............................(2)

//At 
x=150 //mm 
p_x=0
//Sub in equation 1 we get
//0=b*(150**2)**-1-a    .........................(3)

//At 
x2=200 //mm
//p_x2=p
//p=b*(200**2)**-1-a    ......................(4)
  
//From Equation 3 and 4
//p=b*(200**2)**-1-b(150**2)**-1
//after further simplifying we get
//b=-51428.571*p

//sub in equation 3 we get
//a1=-2.2857*p

//therefore hoop stress at junction is
//F_2_1=-21428.571*p*(200**2)**-1-2.2857*p
//after Further simplifying we geet
//F_2_1=3.5714*p

//Let Lame's Equation for cyclinder be 
//p_x=b*(x**2)**-1-a    .........................5
//F_x=b*(x**2)**-1+a   .............................6

//At 
x=200 //mm
//p_x=p2
//p2=b2*(20**2)**-1-a2    ...................7

//At
x2=200 //mm
p_x2=0
//0=b2*(250**2)**-1-a2    ....................8

//from equation 7 and 8 we get
//p2=b2*(200**2)**-1-b2*(250**2)**-1
//After further simplifying we get
//p2=b2*(250**2-200**2)*(200**2*250**2)**-1
//b2=111111.11*p

//from equation 7
//a2=b2*(250**2)**-1
//further simplifying we get
//a2=1.778*p

//At the junctionhoop stress in outer cyclinder 
//F_2_0=b2*(200**2)**-1+a2
//After further simplifying we get
//F_2_0=4.5556*p

//Considering circumferential strain,the compatibility condition
//rho_r*r2**-1=1*E**-1*(F_2_1+F_2_0)
//where F_2_1 is compressive and F_2_0 is tensile
//furter simplifying we get
p=0.1*200**-1*2*10**5*(3.5714+4.5556)**-1

//Let T be the rise in temperature required
//dell_d=d*alpha*T
//After sub values and further simplifying we get
d=250 //mm
T=dell_d*(d*alpha)**-1 //Per degree celsius

//Result
printf("\n Radial Pressure Developed at junction %0.2f  N/mm**2",p)
printf("\n Min Temperatureto outer cyclinder %0.2f  Per degree Celsius",T)
