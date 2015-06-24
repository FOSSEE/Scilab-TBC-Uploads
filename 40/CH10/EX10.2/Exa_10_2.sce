//Truncation and Windowing
//(a)N=9,Barlett Window.
z=%z;
Fc=0.25;
n=-4:4;
hn=2*Fc*(sinc(0.5*n'*%pi))
Wn=1-(2*abs(n'))/8//Barlett window
hwn=hn.*Wn
Hcz=0;
for i=1:length(hwn)
     Hcz=Hcz+hwn(i)*(z^((2-i)));
end
Hcz//indicates delay of 0.15ms
//(b)N=6,vonhann Window
n1=-2.5:2.5;
hn1=2*Fc*(sinc(0.5*n1'*%pi))
Wn1=0.5+0.5*(cos(0.4*%pi*n1'))//Vonhann window
hwn1=hn1.*Wn1
Hcz1=0;
for i=1:length(hwn1)
     Hcz1=Hcz1+hwn1(i)*(z^((2-i)));
end
Hcz1//1st sample of hwn is 0 hence delay is 1.5ms