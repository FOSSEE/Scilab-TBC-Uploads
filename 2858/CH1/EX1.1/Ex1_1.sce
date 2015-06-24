//example 1.1
clc(); funcprot(0);
V=0.25; // ft^3
W=30.8; //lb
Wd=28.2; // weight dried lb
Gs=2.67;
Gammaw=62.4; //lb/ft^3
Gamma=W/V;
disp(Gamma, "moist unit weight in lb/ft^3")
w=(W-Wd)/W;
disp(w*100, "moisture content in %");
Gammad=Wd/V;
disp(Gammad, "dry unit weight in lb/ft^3")
Vs=Wd/Gs/Gammaw;
Vv=V-Vs;
e=Vv/Vs;
disp(e,"void ratio");
n=e/(1+e);
disp(n,"porosity");
Vw=(W-Wd)/Gammaw;
S=Vw/Vv;
disp(S*100,"saturation in %");

