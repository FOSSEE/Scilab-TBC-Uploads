clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Exampl_14.8
//Solution : Program to Determine the Phase equlibrium data for the System

A12=4.62424;
A21=3.35629;
alpha12=3.78608;
alpha21=1.81775;
B11=-996;
B22=-1245;
B12=-567;

P1_sat=103.264;//[kPa]
P2_sat=5.633;//[kPa]

T=308.15;//[K]
R=8314;

//G_E/RT = T1 = A21*x1 + A12*x2 - Q

//V1=exp[(x2^2)*[A12 + (2*(A21-A12)*x1) - Q - (x1*(dQ/dx1))]]

//V2=exp[(x1^2)*[A21 + (2*(A12-A21)*x2) - Q + (x2*(dQ/dx1))]]

//Q=(alpha12*x1*alpha21*x2)/((alpha12*x1) + (alpha21*x2))

//dQ/dx1=dQ_x1=(alpha12*alpha21*(alpha21*x2^2 - alpha12*x1^2))/((alpha12*x1 + alpha21*x2)^2)

//P=(x1*V1*P1_sat)/si1 + (x2*V2*P2_sat)/si2

//d12=2B12-B11-B22

//si1=exp[((B11*(P-P1_sat)) + (P*y2^2*d12)))/RT]

//si2=exp[((B22*(P-P2_sat)) + (P*y1^2*d12)))/RT]

//y1=(x1*V1*P1_sat)/(si1*P)

//y2=(x2*V2*P2_sat)/(si2*P)


//BUBL P

x1=[0.01:0.01:0.99];
x2=1-x1;

for(i=1:99)
    
  si1=1;//Assumed
  si2=1;//Assumed

  dP=100;
  while(dP>0.0001)
    
    Q=approx(((alpha12*x1(i)*alpha21*x2(i))/((alpha12*x1(i)) + (alpha21*x2(i)))),4);
    dQ_x1=approx((alpha12*alpha21*((alpha21*((x2(i))^2)) - (alpha12*((x1(i))^2))))/(((alpha12*x1(i)) + (alpha21*x2(i)))^2),4);
    V1=approx(exp((x2(i)^2)*(A12 + (2*(A21-A12)*x1(i)) - Q - (x1(i)*dQ_x1))),4);
    V2=approx(exp((x1(i)^2)*(A21 + (2*(A12-A21)*x2(i)) - Q + (x2(i)*dQ_x1))),4);
        
    Pi=approx((((x1(i)*V1*P1_sat)/si1) + ((x2(i)*V2*P2_sat)/si2)),4);
    
    y1=approx((x1(i)*V1*P1_sat)/(si1*Pi),4);
    y2=approx((x2(i)*V2*P2_sat)/(si2*Pi),4);
  
    d12=(2*B12)-B11-B22;
    
    si1=approx(exp(((B11*(Pi-P1_sat))+(Pi*(y2^2)*d12))/(R*T)),4);
    si2=approx(exp(((B22*(Pi-P2_sat))+(Pi*(y1^2)*d12))/(R*T)),4);
    
    Pf=approx(((x1(i)*V1*P1_sat)/si1) + ((x2(i)*V2*P2_sat)/si2),4);
  
    dP=abs(Pf-Pi);
  end
  P(i)=Pf;
  y(i)=y1;
end

for(i=1:99)
  if(P(i)>104.61)
    P(i)=%nan;
  end
end    
x1(100)=1;
y(100)=1;
P(100)=P1_sat;

subplot(1,2,1)
P_=[5.633 104.6];
x=[0 0.0117]; 
plot2d(x,P_,rect=[0,0,0.02,104.6])

P_=[104.6 104.6];
x=[0 0.02]; 
plot(x,P_,'r')

P_=[5.633 5.633];
y1=[0 0.02]; 
plot(y1,P_,'b')

P_=[104.6 120];
xa=[0.0117 0.0117]; 
plot(xa,P_,'g--')

legend('P vs x1','P* = 104.6kPa','P vs y1','x1_a=0.0117')
xtitle('P-x-y','x1,y1','P/kPa')

P_=[100 120];
y1=[0.02 0.02]; 
plot(y1,P_,'w')

subplot(1,2,2)

P_=[104.6 104.6];
x=[0.943 0.96]; 
plot(x,P_,'r')

P_=[104.3 104.6];
y1=[0.946 0.946]; 
plot(y1,P_,'b--')

P_=[104.6 104.8];
xb=[0.95 0.95]; 
plot(xb,P_,'g--')

plot2d(x1,P,rect=[0.943,103,1,105])
plot2d(y,P,style=3,rect=[0.943,103,1,105])

legend('P*=104.6kPa','y1*=0.946','x1_b=0.95','P vs x1','P vs y1')
xtitle('P-x-y(Ether Rich Region)','x1,y1','P/kPa')

//End