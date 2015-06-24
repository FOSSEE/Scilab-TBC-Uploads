//Example 3_30
clc;
clear;
close;
format('v',5);
//given data :
V=200;//V
f=50;//Hz
ZA=4+%i*3;//ohm
ZB=10-%i*7;//ohm
ZC=6+%i*5;//ohm
Z=ZC+ZA*ZB/(ZA*ZB);//ohm
IC=V/Z;//A
ICmag=abs(IC);//A
ICang=atand(imag(IC)/real(IC));//degree
disp(ICang,ICmag,"Current IC, magnitude(A) & Angle(degree) are");
IA=IC*ZB/(ZA+ZB);//A
IAmag=abs(IA);//A
IAang=atand(imag(IA)/real(IA));//degree
disp(IAang,IAmag,"Current IA, magnitude(A) & Angle(degree) are");
IB=IC*ZA/(ZA+ZB);//A
IBmag=abs(IB);//A
IBang=atand(imag(IB)/real(IB));//degree
disp(IBang,IBmag,"Current IB, magnitude(A) & Angle(degree) are");
fi=ICang;//degree//angle of pf
pf=cosd(fi);//Power Factor(lagging)
disp(pf,"Power Factor(lagging)");
VC=IC*ZC;//V
VCmag=abs(VC);//A
VCang=atand(imag(VC)/real(VC));//degree
disp(VCang,VCmag,"Voltage VC, magnitude(V) & Angle(degree) are");
VA=IC*ZA*ZB/(ZA+ZB);//V
VAmag=abs(VA);//A
VAang=atand(imag(VA)/real(VA));//degree
disp(VAang,VAmag,"Voltage VA, magnitude(V) & Angle(degree) are");
VB=IC*ZA*ZB/(ZA+ZB);//V
VBmag=abs(VB);//A
VBang=atand(imag(VB)/real(VB));//degree
disp(VBang,VBmag,"Voltage VB, magnitude(V) & Angle(degree) are");
//Answer is not accurate in the book.
