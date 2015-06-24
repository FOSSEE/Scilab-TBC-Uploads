

//example 10.1
//calculate seepage flow per unit length of dam
clc;funcprot(0);
//given
K=5D-4;             //coefficient of permeability of soil
Bt=6;               //width of top of dam
wb=146;             //width of base of dam
H=20;               //heigth of dam
hw=2;               //heigth of water in reservior
hs1=4;              //slope on upstream side
hs2=3;              //slope on downstream side
df=30;              //length of drainage filter

x=wb-df-72+72*0.3;
y=18;
s=(x^2+y^2)^0.5-x;

x=[0 10 20 30 40 50 60 65.6];
for i=1:8
    y(i)=(4.849*x(i)+5.879)^0.5;
    y(i)=round(y(i)*1000)/1000;
end

mprintf("\nx                       y");
for i=1:8
    mprintf("\n%f          %f",x(i),y(i));
end

sf=K*s*10000;
sf=round(sf*1000)/1000;
mprintf("\nSeepage flow per unit length of dam=%fD-6 cumecs/metre length of dam.",sf);
