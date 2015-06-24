//example:-7.4,page no.-353.
// program to find dimension and Q;
f=5*10^9;c=3*10^8;p01=3.832;sigma=5.813*10^7;muo=4*%pi*10^-7;
eipsilar=2.25;
// mode TE011. and d=2a.
omega=2*%pi*f;
eta=377;
lamda=c/f;
k=(2*%pi)/lamda;
// f=(c/(2*%pi))*sqrt((p01/a)^2+(%pi/(2*a))^2); as d=2a given
a=sqrt((p01)^2+(%pi/2)^2)/k;
Rs=sqrt((omega*muo)/(2*sigma))
Qc=(k*a*eta)/(2*Rs); // for m=l=1,n=0 and d=2a.
disp(a,'a in meter = ')
disp(Qc,'Qc = ')