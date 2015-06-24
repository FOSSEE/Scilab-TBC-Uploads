clc
b=250 //mm
d=400 //mm
dia=20 //mm
n=3
SigmaC=7 //N/mm^2
SigmaS=140 //N/mm^2
m=15
As=n*%pi*dia^2 /4
n=m*As*(sqrt(1+ 2*b*d/(m*As))-1)/b
BMC=SigmaC*b*n*(d-n/3)*10^(-6) /2
BMS=SigmaS*As*(d-n/3)*10^(-6)
if BMC>=BMS then
    printf("Limiting material is Steel and moment of resistance of the beam is %f",BMS)
else
    printf("Limiting material is Concrete and moment of resistance of the beam is %f",BMC)
end
