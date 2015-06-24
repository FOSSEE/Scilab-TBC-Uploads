//To Compare the method of service area coverage with four feeders
//Page 221
clc;
clear;

Ts=1; //Assumed Load on station
K=1; //Assumption Constant
K2=K;
K4=K;
D=1;//Assumption Load Density
//Number of feeders
N2=2;
N4=4;
S2=Ts/N2; //Load per feeder //Two feeders
S4=Ts/N4; //Load per feeder //4 feeders
l=poly(0,'l'); //Variable Value of length
L2eff=1*l/3;
L4eff=2*l/3;

deff('x=VD(y)','x=D*(l^2)*K*y') //Function to find VD

VD2=VD(L2eff);
VD4=VD(L4eff);
RVD=VD2/VD4;
X=l-RVD;
RVD=1/roots(X(2)); //To find the ratio of (l2^3)/(l4^3)

Rl=nthroot(RVD,3); //Ratio of length of feeder for 2 feeders two by length of feeder for 4 feeders

//A is directly proportional to l^2
RA=(Rl^2);

//TSn is directly proportional to n and l^2
RTS=(N2/N4)*(Rl^2);

printf('\na) Ratio of substation spacings = 2l2/2l4 = %g\n',Rl)
printf('b) Ratio of areas covered per feeder main = A2/A4 = %g\n',RA)
printf('c) Ratio of substation loads = TS2/TS4 = %g\n',RTS)
