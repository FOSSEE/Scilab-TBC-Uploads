// Example1.4 An aluminium wire 7.5 m long is connected in a parallel with a copper wire 6 m long. When a current of 5A is passed through the combination, it is found that the current in the aluminium wire is 3 A. The diameter of the aluminium wire is 1 mm.  Determine the diameter of the copper wire. Resistivity of copper is 0.017 micro-ohm-metre; that of the aluminium is 0.028 micro-ohm- metre.
// 1 mm =10^-3m
// 1 micro-ohm = 10^-6 ohm
// let the numeral 1 represent aluminium and 2 represent copper.
//Formulae: R=pl/a ; a=%pi*d^2/4
l1 = 7.5; //length of aluminium wire (m)
l2 = 6; // length of copper wire (m)
i = 5; //  total current(amps)
i1= 3;// current through aluminium wire(amps)
d1 = 10^-3;// dia. of aluminium wire (m)
p1 = 0.028*10^-6;// resistivity of aluminium wire(ohm-m)
p2 = 0.017*10^-6;// resistivity of copper wire(ohm-m)
// let d2 be the diameter of the copper wire in meters
i2 = i -i1;// current through copper wire (amps)
// R1=P1l1/a1 and R2= p2l2/a2, on dividing R2/R1= (p2*l2*a1)/(p1*l1*a2)thus a2= a1*(R1/R2)*(p2/p1)*(l2/l1)----- (equ1)
// in parallel combination voltage remain same , therefore V= i1R1= i2R2
//let R2/R1 =m
m=i2/i1;
a1= prod([%pi,d1^2])/4;// crossectional area of alluminium wire (m^2)
a2= prod([a1,m,(p2/p1),(l2/l1)]);// using equ1
d2=sqrt(prod([4,a2])/%pi); // cal of diameter of copper wire (m)
ans= prod([d2,10^3])
disp(ans,"diameter of copper wire(in mm)=")