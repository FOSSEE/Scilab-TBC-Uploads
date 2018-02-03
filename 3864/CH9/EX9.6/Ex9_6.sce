clear
//
//

//Initilization of Variables

L=3000 //mm //Length of column
W=800*10**3 //N //Load
a=1*1600**-1 //Rankine's constant
FOS=4 //Factor of safety
sigma=550 //N/mm**2 //stress

//Calculations

//Effective Length
l=L*2**-1 //mm 

//Let d1=outer diameter & d2=inner diameter
//d1=5*8**-1*d2

//M.I
//I=%pi*64**-1*(d1**4-d2**4) //mm**4

//Area of section
//A=pi4**-1*(d1**2-d2**2) //mm**2

//k=(I*A**-1) 
//substituting values in above equation 
//k=1*16**-1*(d1**2-d2**2)
//after simplifying further we get
//k=0.2948119.d1

//X=l*k**-1
//substituting values in above equation and after simplifying further we get
//X=5087.9898*d1**-1

//Crtitcal Load
P=W*FOS //N

//From Rankine's Load
//P2=sigma*A*(1+a*(X)**2)**-1
//substituting values in above equation and after simplifying further we get
//d1**4-12156618*d1**4-1.96691*10**8=0
//Solving Quadratic Equation we get
//d1**2-12156618*d1-196691000=0
a=1
b=-12156.618
c=-196691000

Y=b**2-4*a*c

d1_1=((-b+Y**0.5)*(2*a)**-1)**0.5 //mm
d1_2=((-b-Y**0.5)*(2*a)**-1) //mm

d2=5*8**-1*d1_1

//Result
printf("\n Section of cast iron hollow cylindrical column is:d1_1 %0.2f  mm",d1_1)
printf("\n                                                  :d2   %0.2f  mm",d2)
