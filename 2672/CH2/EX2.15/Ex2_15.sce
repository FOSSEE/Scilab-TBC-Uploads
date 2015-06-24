//Ex_2_15
clc;
clear;
close;
format('v',5);
//given data : 
N=2000;//turns
lg=2/1000;//m(airgap)
lc=20/100;//m(mean diameter)
Ac=10/10000;//m^2(cross section central limb)
Ao=5/10000;//m^2(cross section outer limb)
B=[1 1.1 1.2 1.3 1.4];//Wb/m^2
H=[550 650.750 820 870];//AT/m
fi=1.1/1000;//Wb
Bc=fi/Ac;//Wb/m^2(For central limb)
Bo=fi/Ao;//Wb/m^2(For outer limb)
for i=1:5
    if Bc==B(i) then
        H=H(i);//AT/m
B=B(i);//Wb/m^2
        break;
    end;
end;
lo=%pi*lc/2;//m(outer limb, including airgap)
//H=NI/l
NIc=H*lc;//AT//NI for central limb
NIo=H*(lo-lg);//AT//NI for outer limb
mu0=4*%pi*10^-7;//permeability of air
Hg=B/mu0;//AT/m
NIag=Hg*lg;////AT//NI for airgap
NI=NIc+NIo+NIag;//AT//Total AT required
I=NI/N;//A
disp(I,"Current I(A)");
