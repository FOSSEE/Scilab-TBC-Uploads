//Page Number: 595
//Example 11.2
clc;
//Given
c=5000; //Rs
S=0.6; //cm
//Sides
x=3; //cm
y=2.54; //cm 
//break even cost
bec=250;
//hence, chips/waffers needed
cpw=c/bec;
D=x*y;
//For given Area, atleast 40 chips are required
n=2*cpw;

//Diameter
N=D/(sqrt(2)*S);
//Lower round off
NN=floor(N);
//Chips possible
cp=NN^2;

//Yield
Y=(n/cp)*100; //Percent
disp('%',Y,'Yield:');
