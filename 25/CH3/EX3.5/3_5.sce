// example:-3.5,page no.-91.
// program to find out load admittance and input admittance of the line
syms lamda;
Zl=100+50*%i;
Zo=50;
le=0.15;  //electrical length(l/lamda).
b=(2*%pi);
tao=reflection_coefficient(Zl,Zo);
Zin=input_impedence(tao,b,le,Zo);
Yin=1/Zin;
Yl=1/Zl;
// result
disp(Yin,'input admittance = ')
disp(Yl,'load admittance = ')