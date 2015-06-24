

//example 3.17
//calculate resvior capacity
clc;
//Given
CL=0.2;                   //Canal loss
RL=0.12;                  //Reservior loss
A=[4800 5600 2400 3200 1400];     //given values of area under crop
D=[1800 800 1400 900 700];     //given values of duty at field
B=[120 360 200 120 120];       //given values of base period

//(a) Wheat
d=A(1)/D(1);
V1=d*B(1);
//(b) Sugarcane
d=A(2)/D(2);
V2=d*B(2);
//(c) Cotton
d=A(3)/D(3);
V3=round(d*B(3));
//(d) Rice
d=A(4)/D(4);
V4=round(d*B(4));
//(e) vegetables
d=A(5)/D(5);
V5=d*B(5);

Vd=(V1+V2+V3+V4+V5)*8.64;
SC=Vd/((1-CL)*(1-RL));
mprintf("Reservior capacity=%f hectare-metres.",SC);

//Alternative method

for i=1:5
    delta(i)=8.64*B(i)/D(i);
end

for j=1:5
    V(j)=A(j)*delta(j);
end
s=0;
for k=1:5
    s=s+V(k);
end
SC=s/((1-CL)*(1-RL));
SC=round(SC);
mprintf("\n By Alternative method.\nStorage capacity=%f hectare-metres.",SC);






