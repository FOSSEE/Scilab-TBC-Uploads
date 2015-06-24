
//determine the energy consume in a house in the month 
L=3600//six lamp 1000 watt each for six days
H=3000//one haeter
M=735.5//single phase motor
F=2400//four fans 75W
T=L+H+M+F//total energy consumed in watt 
TE=T*30/1000
C=0.9//cost of energy
B=TE*0.9//Bil amount
disp('B=  '+string(B)+'  ')
