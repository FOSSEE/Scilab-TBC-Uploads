//Example 2.8
//Derive equtations for temprature distribution.
//calculate the maximum temp. in the assembly
//Given
ka=24         //W/mC thermal conductivitiy of material A
tA=0.1        //m, thickness of A material
kB=230        //W/mC thermal conductivity of metl B
kC=200        //W/mC thermal conductivity of metal C
tB=0.1        //m, thickness of B metal
tC=0.1        //m, thickness of C metal
TBo=100       //C, outer surface temp. of B wall
TCo=100       //C, outer surface temp. of C wall
Q=2.5*10^5    //W/m^3, heat generated
//NUMERIC PART
//Temprature distribution in A, B and C
x=poly(0,'x')
TA=-5208*x^2+2175*x-74.5
TB=100+96.6*x
TC=155.2-14*x

//position of maximum temprature x, 
D=derivat(TA)
//At D=0
x=2175/10416
printf("The maximum temp. will occur at a position %f m\n",x)
x1=x
TA=-5208*x1^2+2175*x1-74.5
printf("The maximum temprature is %f C",TA)

