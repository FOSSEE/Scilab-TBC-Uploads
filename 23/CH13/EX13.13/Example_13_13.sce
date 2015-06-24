clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.13
//Caption : Program to Find the Composition at different Temperatures

n_air=2.381//[mol]
n_O2=0.21*n_air;
n_N2=0.79*n_air;
R=8.314;

P=20;//[bar]
T=[1000 1100 1200 1300 1400 1500];
dG_H2O=[-192420 -187000 -181380 -175720 -170020 -164310];
dG_CO=[-200240 -209110 -217830 -226530 -235130 -243740];
dG_CO2=[-395790 -395960 -396020 -396080 -396130 -396160];

KI='y_H2O/((y_O2)^0.5*y_H2)(P/Po)^-0.5'
KII='y_CO/((y_O2)^0.5)(P/Po)^0.5'
KIII='y_CO2/y_O2'

n='3.38+((e2-e1)/2)'
y_H2='-e1/n'
y_CO='e2/n'
y_O2='((0.5(1-e1-e2))-e3)/n'
y_H2O='(1+e1)/n'
y_CO2='e3/n'
y_N2='1.88/n'

KI='(1+e1)(2n)^0.5*(P/Po)^-0.5'
KII='(e3*(P/Po)^0.5)/(1-e1-e2-2e3)^0.5*(n/2)^0.5'
KIII='2e3/(1-e1-e2-2e3)'

K_I=approx(exp(-dG_H2O./(R.*T)),1)
K_II=approx(exp(-dG_CO./(R.*T)),1)
K_III=approx(exp(-dG_CO2./(R.*T)),1)

//Now since the values of KI KII KIII valyes are so High the mole fraction of O2 must be very small
//Hence We eleminate O2,Hence 2 Eqns are,

//C + CO2 --> 2CO      (a)
//H2O + C --> H2 + CO  (b)

Ka='(y_CO^2/y_CO2)*(P/Po)'
Kb='((y_H2*y_CO)/y_H2O)*(P/Po)'

n='3.38+(e_a+e_b)'
y_H2='e_b/n'
y_CO='(2e_a+e_b)/n'
y_H2O='(1-e_b)/n'
y_CO2='(0.5-e_a)/n'
y_N2='1.88/n'

Ka='(2e_a+e_b)^2/((0.5-e_a)*n)*(P/Po)'
Kb='e_b(2e_a+e_b)/((1-e_b)*n)*(P/Po)'

dG_new_a=(2*dG_CO)-dG_CO2;
dG_new_b=dG_CO-dG_H2O;

Ka=approx(exp((-dG_new_a./(R.*T))),3);
Kb=approx(exp((-dG_new_b./(R.*T))),3);

//Calculation of e_a and e_b

a=0.1;//Initial Value

b=0.7;//Initial Value

C1=Ka/20;
C2=Kb/20;

for(i=1:6)
c=-1;
while(c==-1)
  fa=approx((((a^2)*(4+C1(i)))+(b^2)+((4+C1(i))*(a*b))+(2.88*C1(i)*a)-(0.5*C1(i)*b)-(1.69*C1(i))),4);
  dfax=approx(((2*a*(4+C1(i)))+((4+C1(i))*b)+(2.88*C1(i))),4);
  dfay=approx((2*b)+((4+C1(i))*a)-(0.5*C1(i)),4);

  fb=approx(((b^2*(1+C2(i)))+((2+C2(i))*a*b)-(C2(i)*a)+(2.38*C2(i)*b)-(3.38*C2(i))),4);
  dfbx=approx((((2+C2(i))*b)-C2(i)),4);
  dfby=approx(((2*b*(1+C2(i)))+((2+C2(i))*a)+(2.38*C2(i))),4);

  A=[dfax dfay;dfbx dfby];
  B=[-fa;-fb];
  Ans=approx(A\B,4); 
  da=Ans(1);
  db=Ans(2);
  
  if(da==0 & db==0)
    c=0;
    e_a(i)=a;
    e_b(i)=b;
    break;
  end
  a=a+da;
  b=b+db;
end    
end

n=3.38+(e_a+e_b);
y_H2=approx(e_b./n,3);
y_CO=approx(((2*e_a)+e_b)./n,3);
y_H2O=approx((1-e_b)./n,3);
y_CO2=approx((0.5-e_a)./n,3);
y_N2=approx(1.88./n,3);

Ans=[T',Ka',Kb',e_a,e_b];
Ans1=[T',y_H2,y_CO,y_H2O,y_CO2,y_N2];

plot(T',y_H2,'r-')
plot(T',y_CO,'b-')
plot(T',y_H2O,'g-')
plot(T',y_CO2,'m-')
plot(T',y_N2,'y-')

legend('H2','CO','H2O','CO2','N2',)
xtitle('Equllibrium Compositions','T/K','yi')



disp(Ans,'    T/K       Ka         Kb         e_a       e_b')

disp(Ans1,'    T/K      y_H2     y_CO    y_H2O    y_CO2    y_N2')

//End