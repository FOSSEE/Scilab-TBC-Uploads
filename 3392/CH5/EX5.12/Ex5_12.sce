clc
// initialization of variables
clear
// Material properties and dimensions
E=72 //G Pa
P=10 //kN
Q=5 //kN
Aab=150 //mm^2
Abc=900 //mm^2
Acd=900 //mm^2
Ade=900 //mm^2
Abd=150 //mm^2
Abe=150 //mm^2
Lab=2 //m
Lbc=2.5 //m
Lbd=1.5 //m
Lbe=2.5 //m
Lcd=2 //m
Lde=2 //m
//calculations
E=E*10^9
P=P*10^3
Q=Q*10^3
Aab=150
Aab=Aab*10^-6
Abc=Abc*10^-6
Acd=Acd*10^-6
Ade=Ade*10^-6
Abd=Abd*10^-6
Abe=Abe*10^-6
M=0
Nab=4/3*(Q+2*P)-5*M/(3*Lbe)
dNab=-5/(3*Lbe)
Nbc=-5/3*(Q+P)
dNbc=0
Nbd=Q
dNbd=0
Nbe=5*P/3-4/3*M/Lbe
dNbe=-4/(3*Lbe)
Ncd=-4*P/3+5/3*M/Lbe
dNcd=5/(3*Lbe)
Nde=Ncd
thBE=Nab*Lab*dNab/(E*Aab)+Nbc*Lbc*dNbc/(E*Abc)+Nbd*Lbd*dNbd/(E*Abd)+Nbe*Lbe*dNbe/(E*Abe)+2*Ncd*Lcd*dNcd/(E*Lcd)
printf('The rotation of member BE is %.5f rad',thBE)
// Wrong answer in the text
