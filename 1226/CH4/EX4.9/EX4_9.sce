clc;funcprot(0);//EXAMPLE 4.9
// Initialisation of Variables
r=8;...........................//Compression ratio
C=44000;............//Calorific value of fuel in kJ/kg
afr=13.8;.....................//Air fuel ratio
t1=343;.............................//Temperature of the mixture at the beginning of the compression in Kelvin
p1=1;........................//Pressure of the mixture at the beginning of the compression in bar
cv=0.716;.....................//Specific heat at constant volume in kJ/kgK
in=1.35;.......................//Index of compression
nc=6;..........................//No of carbon elements in the given fuel
nh=14;.........................//No of hydrogen elements in the given fuel
mc=12;...........................//Atomic mass of carbon in amu
mh=2;.............................//atomic mass of hydrogen molecule in amu
mo=32;...........................//Atomic mass of oxygen molecule in amu
//Calculations
//The chemical equation is C6H14 + xO2 ==> yCO2 + zH2O 
//x is the no of oxygen molecules required for complete combustion
//y is the no of carbon dioxide molecules produced in complete combustion
//z is the no of Water molecules produced in complete combustion
y=nc;............................//As no of CO2 molecules is equal to no of C atoms in the fuel
z=nh/2;..........................//No of H2O molecules is equal to half the no of H atoms in the fuel
x=(z/2)+y;...........................//No of oxygen molecules required for combustionis half the no of water molecules plus the no of oxygen molecules 
gafr=((x*32)*(100/23))/((mc*y)+(mh*z));.................//Gravimetric air fuel ratio
ms=(gafr/afr)*100;......................//Actual mixture strength
//Since the mixture strength is greater than 100 %
//The mixture is rich in fuel. The combustion is therefore incompplete and hence CO will be formed
d=ms/100;......................//No of fuel molecules required for combustion
//The chemical equation is d(C6H14) + 9.5(O2) ==> a(CO2) + b(CO) + c(H2O) 
c=(d*nh)/2;...............................//No of H2O molecules is equal to half the no of H atoms in the fuel
a=(x*2)-(d*nc)-c;........................//Equating atoms of the same element on both sides of equation
b=(d*nc)-a;
//By adding nitrogen on both sides, we are adding the same molecular weight on both sides.
//Air is 79 % nitrogen and 21 % oxygen
//Both N2 and O2 are diatomic molecules
n=x*(79/21);.............................//No of nitrogen molecules 
mbc=d+x+n;.............................//Moles before combustion
mac=a+b+c+n;.............................//Moles after expansion
me=(mac-mbc)/mbc;........................//Molecular expansion
t2=(t1*(r^(in-1)));
t3=(t2+(C/((afr+1)*cv)));..................//Maximum temperature ignoring molecular expansion in Kelvin
p3=p1*r*(t3/t1);...........................//Maximum pressure ignoring molecular expansion in bar
t3me=t3;...............................//Maximum temperature considering molecular expansion in Kelvin
p3me=p3*(mac/mbc);....................//Maximum pressure considering molecular expansion in bar
disp(t3,"Maximum temperature ignoring molecular expansion (in Kelvin):")
disp(p3,"Maximum pressure ignoring molecular expansion (in bar):")
disp(t3me,"Maximum temperature considering molecular expansion (in Kelvin):")
disp(p3me,"Maximum pressure considering molecular expansion (in bar):")

