
clc;
clear;
//Example 2.51
//Given
k=75    //Thermal conductivity [W/(m.K)]
T_water=363    //[K]
T_air=303    //[K]    
dT=T_water-T_air    //delta T
h1=150    // for water[W/(sq m.K)]
h2=15       //for air [W/(sq m.K)]
W=0.5    //Width of wall[m]
L=0.025    //[m]
Area=W^2    //Base Area [sq m]
t=1    //[mm]
t=t/1000    //[m]
pitch=10    //[mm]
pitch=pitch/1000    //[m]
N=W/pitch    //[No of fins]
//Calculations
A=N*W*t    //Total cross-sectional area of fins   in [sq m]
Ab=Area-A    //[sq m]
Af=2*W*L    //Surface area of fins    [sq m]

//CASE 1: HEAT TRANSFER WITHOUT FINS
A1=Area    //[sq m]
A2=A1    //[sq m]
Q=dT/(1/(h1*A1)+1/(h2*A2));        //[W]
printf("\nWithout fins,Q=%f W\n",Q);
//CASE 2: Fins on the water side
P=2*(t+W);
A=0.5*10^-3;
m=sqrt(h1*P/(k*A))
nfw=tanh(m*L)/(m*L)   //Effeciency on water side
Aew=Ab+nfw*Af*N    //Effective area on the water side    [sq m]
Q=dT/(1/(h1*Aew)+1/(h2*A2));        //[W]
printf("\n With fins on water side,Q=%f W \n",Q);
//CASE 3: FINS ON THE AIR SIDE
m=sqrt(h2*P/(k*A))
nf_air=tanh(m*L)/(m*L)    //Effeciency
Aea=Ab+nf_air*Af*N    //Effective area on air side
Q=dT/(1/(h1*A1)+1/(h2*Aea));        //[W]
printf("\n With Fins on Air side,Q=%f W \n",Q)
//BOTH SIDE:
Q=dT/(1/(h1*Aew)+1/(h2*Aea));        //[W]
printf("\n With Fins on both side,Q=%f W \n",Q);
