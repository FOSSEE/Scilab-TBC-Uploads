clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 14.1
//Caption : Program to Find the Fugacity Coefficients of Nitrogen and Methane

Tc=[126.2 190.6];
T=200;//[K]
Tr=T./Tc;
Pc=[34 45.99];
P=30;//[Bar]
Pr=P./Pc;
R=83.14;
bi=approx(0.08664.*R.*Tc./Pc,3);
ai=approx(((0.42748.*(R^2).*(Tc.^2).*(Tr.^(-0.5))./Pc)/(10^5)),3);  //10^-5ai
y=[0.4 0.6];
a=approx(((y(1)^2)*ai(1))+(2*y(1)*y(2)*sqrt((ai(1)*ai(2))))+((y(2)^2)*ai(2)),2);  //10^-5a
b=approx((y(1)*bi(1))+(y(2)*bi(2)),3);

q=(a*10^5)/(b*R*T);
Beta=0.051612;
//Z=1+Beta-(q*(Z-Beta)/(Z*(Z+Beta)))

Z=1;//initial
A=Z;
for i=0:10
  B=1+Beta-((q*Beta)*(A-Beta)/(A*(A+Beta)));
   if((B-A)==0.0001)
     break;
   end
   A=B;
   i=i+1;
end
Z=approx(B,5);

I=log((Z+Beta)/Z)
a1=approx((2*y(1)*ai(1))+(2*y(2)*sqrt((ai(1)*ai(2)))-a),2);   //10^-5a1
a2=approx((2*y(2)*ai(2))+(2*y(1)*sqrt((ai(2)*ai(1)))-a),2);   //10^-5a2
b1=bi(1);
b2=bi(2);
q1=approx(q*(((a1+a)/a)-(b1/b)),5);
q2=approx(q*(((a2+a)/a)-(b2/b)),5);
ln_si1=approx((((b1/b)*(Z-1))-(log(Z-Beta))-(q1*I)),5);   //ln si1
ln_si2=approx((((b2/b)*(Z-1))-(log(Z-Beta))-(q2*I)),5);   //ln si2
si1=approx(exp(ln_si1),5);
si2=approx(exp(ln_si2),5);
q=[q1 q2];
ln_si=[ln_si1 ln_si2];
si=[si1 si2];
a_=[a1 a2];
b_=[b1 b2];
q_=[q1 q2];

disp('bar cm^6 mol^-2',a,'a = ')
disp('cm^3 mol6-1',b,'b = ')
disp(q,'q = ')

Ans=[Tc',Tr',Pc',bi',ai',a_',b_',q_',ln_si',si'];
disp(Ans,'       Tc       Tr        Pc        bi         ai       a         b         q        ln si       si')

//End