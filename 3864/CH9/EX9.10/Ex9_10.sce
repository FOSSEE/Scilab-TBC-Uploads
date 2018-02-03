clear
//
//

//Initilization of Variables

sigma=326 //N/mm**2 //stress
E=2*10**5 //N/mm**2 //Modulus of Elasticity
FOS=2 //Factor of safety
a=1*7500**-1 //Rankine's constant
D=350 //mm //Overall Depth 

//Cover plates
b1=500 //mm //width
t1=10  //mm //Thickness

d=220 //mm //Distance between two channels

L=6000 //mm //Length of column

A=5366 //mm**2 //Area of Column section 
I_xx=100.08*10**6 //mm**4 //M.I of x-x axis
I_yy=4.306*10**6 //mm**4 //M.I of y-y axis
C_yy=23.6 //mm //Centroid at y-y axis

//Calculations

//Symmetric axes are the centroidal axes is

//M.I of Channel at x-x axis
I_xx_1=2*I_xx+2*(1*12**-1*b1*t1**3+b1*t1*(D*2**-1+t1*2**-1)**2)

//M.I of Channel at y-y axis
I_yy_1=2*(I_yy+A*(d*2**-1+C_yy)**2)+2*12**-1*t1*b1**3

//As I_yy<I_xx
//So
I=I_yy_1 //mm**4 

A2=2*A+2*t1*b1 //Area of channel

k=(I*A2**-1)**0.5 //mm

//Critical Load
P=sigma*A2*(1+a*(L*k**-1)**2)**-1 

//Safe Load
S=P*2**-1*10**-3 //KN

//Result
printf("\n Safe Load carrying Capacity is %0.2f  KN",S)
