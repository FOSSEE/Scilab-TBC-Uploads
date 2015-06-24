//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.3-3
//Principles of Steady State Heat Transfer
//given data
//nomenclature of unmentioned specifications similar to previous example
ri=0.412/12;//inside radius of the steel pipe in ft
r1=0.525/12;//outside radius of the steel pipe in ft
ro=2.025/12;//lagging radius of the steel pipe in ft
L=1;//unit length of the pipe
Ai=2*%pi*ri*L;//Area of the resp surfaces
A1=2*%pi*r1*L;
Ao=2*%pi*ro*L;
Aa1lm=(A1-Ai)/log(A1/Ai);
Ab1lm=(Ao-A1)/log(Ao/A1);
ka=26;
kb=0.037;
hi=1000;
Ri=1/(hi*Ai);
Ra=(r1-ri)/(ka*Aa1lm);
Rb=(ro-r1)/(kb*Ab1lm);
ho=2;
Ro=1/(ho*Ao);
Ti=267;To=80;
q=(Ti-To)/(Ri+Ra+Rb+Ro);
Ui=1/(Ai*(Ri+Ra+Rb+Ro));
mprintf("the overall HTC= %f btu/h ft2 deg F",Ui)
Q=Ui*Ai*(Ti-To);
mprintf(" the heat ejected = %f btu/h",Q)
