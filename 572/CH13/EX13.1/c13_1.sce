//(13.1)  Determine the air–fuel ratio on both a molar and mass basis for the complete combustion of octane, C8H18, with (a) the theoretical amount of air, (b) 150% theoretical air (50% excess air).

//solution

//part(a)
//the combustion equation can be written in the form of 
//C8H18 + a(O2 + 3.76N2) --> b CO2 + c H2O + d N2
//using conservation of mass principle
b = 8
c = 18/2
a = (2*b+c)/2
d = 3.76*a

//The air–fuel ratio on a molar basis is
AFbar = a*(1+3.76)/1

Ma = 28.97                                                                      //molar mass of air
MC8H18 = 114.22                                                                 //molar mass of C8H18
//The air–fuel ratio expressed on a mass basis is
AF = AFbar*[Ma/MC8H18]

printf('The air–fuel ratio on a molar basis is:  %f',AFbar)
printf('\nThe air–fuel ratio expressed on a mass basis is:  %f',AF)

//part(b)
//For 150% theoretical air, the chemical equation for complete combustion takes the form
//c8H18 + 1.5*12.5*(O2 + 3.76N2) --->  b CO2 + c H2O + d N2 + e O2
//using conservation of mass
b = 8
c =18/2
e = (1.5*12.5*2 - c -2*b)/2
d = 1.5*12.5*3.76
//The air–fuel ratio on a molar basis is
AFbar = 1.5*12.5*(1+3.76)/1
//The air–fuel ratio expressed on a mass basis is
AF = AFbar*[Ma/MC8H18]
printf('\n\nThe air–fuel ratio on a molar basis is:  %f',AFbar)
printf('\nThe air–fuel ratio expressed on a mass basis is:  %f',AF)










