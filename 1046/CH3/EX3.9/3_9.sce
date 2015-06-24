//Example 3.9
//(a) calculate the temp. at the surface of slab A.
//what is the maximum Temp. in A.
//(b)determine the temp. gradient at both the 
//surfaces of each of the slabs A,B  and C.
//(c)calculate the value of h1 & h2.

//Given
tA=0.25          //m, thickness of slab A
tB=0.1           //m, thickness of slab B
tC=0.15          //m, thickness of slab C
kA=15            //W/m C, thermal comductivity of slab A
kB=10            //W/m C, thermal comductivity of slab B
kC=30            //W/m C, thermal comductivity of slab C
x=poly(0,'x')    //m, distance from left surface of B
//Temprature distribution in slab A
TA=90+4500*x-11000*x^2
T1=40            //C, fluid temp.
T2=35            //C, medium temp.

//calculation
//(a)
x1=tB           
TA1=90+4500*x1-11000*x1^2
//similarly at the right surface
x2=tA+tB
TA2=90+4500*x2-11000*x2^2
//let dTA/dx=D
D=derivat(TA)
D=0              //for maximum temp.
x3=4500/22000
TAmax=90+4500*x3-11000*x3^2
printf("At x=0.1 the temp. at the surface of slab A  is %f C\n",TA1)
printf("At x=0.35 the temp. at the surface of slab A  is %f C\n",TA2)
printf(" the maximum Temp. in A occurs at  %f m\n",x3)
printf(" the maximum Temp. in A is %f TAmax \n",TAmax)

//(b)
//At the interface 2
D1=4500-2*11000*x1       //C/W, D1=dTA/dx, at x=0.1
//At the interface 3
D2=4500-2*11000*x2       //D12=dTA/dx, at x=0.35
//Temprature gradient in slab B and C
//by using the continuity of heat flux at interface (2)
D3=-kA*D1/(-kB)          //D3=dTB/dx,  at x=0.1
//at interface (1)
D4=D3                    //D4=dTB/dx  at x=0
//similarly 
D5=-1600                 //C/W, dTB/dx, x=0.35
D6=D5                    //at interface 4
printf("temp. gradient at interface 2 of the slabs A is %f C/W\n",D1)
printf("temp. gradient at interface 3 of the slabs A is %f C/W\n",D2)
printf("temp. gradient at interface 2 of the slabs B is %f C/W\n",D3)
printf("temp. gradient at interface 1 of the slabs B is %f C/W\n",D4)
printf("temp. gradient at interface 3 of the slabs Cis %f C/W\n",D5)
printf("temp. gradient at interface 4 of the slabs C is %f C/W\n",D6)

//(c)
//from D3=3450  and TB=beeta1*x+beeta2
beeta1=3450
beeta2=85
x=0
TB=beeta1*x+beeta2
//similary
TC=877.5-1600*x
h1=-kB*D4/(T1-TB)
//similarly
h2=1129
printf("The  heat transfer coefficient at one surface of solid fluid interface is %fW/m^2 C\n",h1)
printf("The  heat transfer coefficient at other surface of solid fluid interface is %fW/m^2 C",h2)


