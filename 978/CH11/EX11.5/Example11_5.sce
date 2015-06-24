//chapter-11,Example11_5,pg 506

f=1*10^3//frequency

C=0.01*10^-6//capacitance

//f=(1/(2*%pi))*(1/(6^(1/2)*RC))

R=(1/(2*%pi*(6^(1/2)*C*f)))//resistance of circuit

printf("resistance of circuit\n")

printf("R=%.2f ohm",R)