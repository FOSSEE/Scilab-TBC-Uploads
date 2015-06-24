clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.1
//Caption : Program to Reduce the set of VLE Data and Plot the Graphs

P=[90.15,91.78,88.01,81.67,78.89,76.82,73.39,66.45,62.95,57.70,50.16,45.70,29.00];
x1=[0.000,0.063,0.248,0.372,0.443,0.508,0.561,0.640,0.702,0.763,0.834,0.874,1.000];
y1=[0.000,0.049,0.131,0.182,0.215,0.248,0.268,0.316,0.368,0.412,0.490,0.570,1.000];
x2=1-x1;
y2=1-y1;
P1_sat=P(13);
P2_sat=P(1);
K=zeros(1,13);
for(i=1:13)
  if(i ~= 1)
    ln_V1(i)=approx(log(y1(i)*P(i)/(x1(i)*P1_sat)),3);
  end  
  if(i ~= 13)
    ln_V2(i)=approx(log(y2(i)*P(i)/(x2(i)*P2_sat)),3);
  end
end
ln_V1(1)=%nan;
ln_V2(13)=%nan;
for(i=2:12)
  K(i)=approx(((x1(i)*ln_V1(i))+(x2(i)*ln_V2(i)))/(x1(i)*x2(i)),3);  //K=G_E/(x1*x2*R*T)
  k(i)=approx(((x1(i)*ln_V1(i))+(x2(i)*ln_V2(i))),3);  //K=G_E/(R*T)
  
end
K(1)=%nan;
k(1)=%nan;
K(13)=%nan;
k(13)=%nan;
A21=0.70;
A12=1.35;
K_new=approx((A21.*x1)+(A12.*x2),3);
//Using Eqn (12.10(a) and 12.10(b))
ln_V1_new=approx((x2.*x2).*(A12+(2*(A21-A12).*x1)),3);
V1_new=approx(exp(ln_V1_new),3);
ln_V2_new=approx((x1.*x1).*(A21+(2*(A12-A21).*x2)),3);
V2_new=approx(exp(ln_V2_new),3);
//Using Eqn (12.11)
P_new=(x1.*V1_new*P1_sat)+(x2.*V2_new*P2_sat);

A21_new=0.596;
A12_new=1.153;

K_new1=approx((A21_new.*x1)+(A12_new.*x2),3);
//Using Eqn (12.10(a) and 12.10(b))
ln_V1_new1=approx((x2.*x2).*(A12_new+(2*(A21_new-A12_new).*x1)),3);
V1_new1=approx(exp(ln_V1_new1),3);
ln_V2_new1=approx((x1.*x1).*(A21_new+(2*(A12_new-A21_new).*x2)),3);
V2_new1=approx(exp(ln_V2_new1),3);
//Using Eqn (12.11)
P_new1=(x1.*V1_new1*P1_sat)+(x2.*V2_new1*P2_sat);

subplot(1,2,1)
plot(x1,P,'bo')
plot(y1,P,'gs')

plot(x1,P_new,'b-')
plot(y1,P_new,'g-')

plot(x1,P_new1,'b--')
plot(y1,P_new1,'g--')

legend('Actual(P vs x1)','Actual(P vs y1)','By Gibbs Duhem(P vs x1)','By Gibbs Duhem(P vs y1)','By Barkers Method(Accurate)')

xtitle('(a)','x1,y1','P/kPa')

subplot(1,2,2)
plot(x1,ln_V1,'bs')
plot(x1,ln_V2,'gv')   

plot(x1,K,'ro')   

plot(x1,K_new,'r-')
plot(x1,ln_V1_new,'b-')
plot(x1,ln_V2_new,'g-')

plot(x1,K_new1,'r--')
plot(x1,ln_V1_new1,'b--')
plot(x1,ln_V2_new1,'g--')

legend('Actual(ln V1 vs x1)','Actual(ln V2 vs x1)','G_E/x1x2RT vs x1','By Gibbs Duhem(G_E/x1x2RT vs x1)','By Gibbs Duhem(ln V1 vs x1)','By Gibbs Duhem(ln V2 vs x1)','By Barkers Method(Accurate)')
xtitle('(b)','x1')

//End