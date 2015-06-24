clc
clear
//Input data
CO=12;//The composition of carbondioxide of combustion by volume in percentage 
C=0.5;//The composition of carbonmoxide of combustion by volume in percentage 
O=4;//The composition of oxygen of combustion by volume in percentage 
N=83.5;//The composition of nitrogen of combustion by volume in percentage 
o=32;//Molecular weight of the oxygen
co=44;//Molecular weight of the carbondioxide 
c=12;//Molecular weight of the carbon
s=32;//Molecular weight of the sulphur
so=64;//Molecular weight of sulphur dioxide
n1=28;//Molecular weight of the nitrogen
h=2;//Molecular weight of the hydrogen

//Calculations
m=12+0.5;//Balancing carbon
x=N/3.76;//Balancing nitrogen
z=[x-(CO+(C/2)+O)]*2;//Balancing oxygen
n=z*h;//Balancing hydrogen
Af=[(x*o)+(N*n1)]/[(m*c)+(n)];//Air/fuel ratio
As=[(18.46*o)+(69.41*n1)]/173.84;//Stoichiometric air/fuel ratio
Ta=(Af/As)*100;//Percent theoretical air
mc=[(m*c)/173.84]*100;//Composition of carbon on mass basis in percent
mh=(n/173.84)*100;//Composition of hydrogen on mass basis in percent

//Output
printf(' (a)The air/fuel ratio = %3.2f \n (b)The percent theoretical air = %3.1f percent \n (c)The percentage composition of fuel on a mass basis : \n   C = %3.1f percent \n   H = %3.1f percent ',Af,Ta,mc,mh)
