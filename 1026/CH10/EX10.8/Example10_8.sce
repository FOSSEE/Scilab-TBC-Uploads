//chapter10,Example10_8,pg 274

e=1.6*10^-19

me=9.1*10^-31//mass of electron

q=3.2*10^-19

malp=6.68*10^-27//mass of alpha particle

B=0.05

V=20*10^3

//v=sqrt((2*q*V)/m)

//R=(1/B)*sqrt((2*m*V)/q)

Re=(1/B)*sqrt((2*me*V)/e)

Ralp=(1/B)*sqrt((2*malp*V)/q)

S=2*Ralp-2*Re//linear separation between two particles on common boundary wall

printf("linear separation between two particles on common boundary wall\n")

printf("S=%.2f m",S)