clear
//
//
//

//Variable declaration    
r1=1.258*10^-10;     //atomic radius(m)
r2=1.292*10^-10;     //atomic radius(m)
n1=2;
n2=4;

//Calculations
a1=4*r1/sqrt(3);      //lattice constant(m)
V1=a1^3/n1;          //volume(m^3)
a2=2*sqrt(2)*r2;      //lattice constant(m)
V2=a2^3/n2;          //volume(m^3)
V=(V1-V2)*100/V1;           //percent volume change

//Result"
printf("\n percent volume change is %0.1f percentage",V)
