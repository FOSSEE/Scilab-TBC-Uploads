//Example 2.8

clc;clear;close;
t=poly(0,'t');
//cn=3/(4+(n*%pi)^2)
Pt=0.669;        //Total energy
Preq=0.999*Pt;    //Required energy
c0=3/(4+(0*%pi)^2);
disp(c0,'c0=');
P=(abs(c0))^2;
c=[];n=0;
while P<Preq
   n=n+1;
   c(n)=3/(4+(n*%pi)^2);
   disp(c(n),'cn=',n,'n=');
   P=P+2*(abs(c(n)))^2;
end
disp(Pt,'Total power Pt=');
disp(Preq,'99.9% of total power Preqd=');
disp(n,'To iclude 99.9% of energy, we need to retain n terms where n=');