//Chapter-14, Example 14.2, Page 576
//=============================================================================
clc
clear

//INPUT DATA
pA=-0.9;//Partial pressure of water vapour in atm
t=0.0025;//Boundary layer thickness in m

//CALCULATIONS
//pA=(exp(-33.35y)-0.9)
y=0;
pAs1=exp(-33.35*y)-0.9;//Partial pressure in atm
y=t;
pAs2=exp(-33.35*y)-0.9;//Partial pressure in atm
//partial derivative of pA wrt y is -33.35exp(y)-0.9
x=0;
X=(-33.35*exp(x))-pA;//Partial derivative value at x=0
DAB=(0.26*10^-4)//DAB value in m^2/s
h=(DAB*X)/(pAs2-pAs1);//Local mass transfer coefficient in m/s

//OUTPUT
mprintf('Local mass transfer coefficient is %3.4f m/s',h)

//=================================END OF PROGRAM==============================
