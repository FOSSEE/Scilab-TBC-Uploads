

//example 10.5
//design upstream impervious blanket
clc;funcprot(0);
//given
Zb=1.2;       //thickness of blanket
Zf=8;         //distance of blanket from foundation
kb=0.06;      //coefficient of permeability of blanket material
kf=72;        //coefficient of permeability of foundation soil
Hw=10;         //heigth of water in reservior
Xd=40;

a=(kb/(kf*Zb*Zf))^0.5;
Xo=1.414/a;

//we vary value of x
x=[0 25 50 75 100 125 151.8 300]
for i=1:8
    e=exp(2*a*x(i));
    Xr(i)=(e-1)/(a*(e+1));
    ho(i)=Xr(i)*Hw/(Xr(i)+Xd);
    r(i)=Xr(i)*100/(Xr(i)+Xd);
end
mprintf("\nx                     Xr              ho         reduction q(percent)");
for i=1:8
    mprintf("\n%f        %f        %f        %f",x(i),Xr(i),ho(i),r(i));
end
//graph is plotted between r and x.
//after around 130m length there is only slight increase in head dissipated(ho)
L=130;
mprintf("\nThickness of blanket=%f m",Zb);
mprintf("\nLength of blanket=%i m.",L);

