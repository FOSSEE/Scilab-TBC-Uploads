clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.5
//Caption : Program to Find L V {xi} and {yi} for a System

z1=0.45;
z2=0.35;
z3=0.2;
P=110;//[KPa]
T=353.15;//[K]
P1_sat=195.75;//[KPa]
P2_sat=97.84;//[KPa]
P3_sat=50.32;//[KPa]

//BUBL Calculation
x1=z1;
x2=z2;
x3=z3;
P_BUBL=(x1*P1_sat)+(x2*P2_sat)+(x3*P3_sat);

//DEW Calculation
y1=z1;
y2=z2;
y3=z3;
P_Dew=1/((y1/P1_sat)+(y2/P2_sat)+(y3/P3_sat));

//Since P_Bubl<P<P_dew
//Flash Calculation
K1=P1_sat/P;
K2=P2_sat/P;
K3=P3_sat/P;

//Finding V from Eqn(10.17)
//E((zi*Ki)/(1+(V*(Ki-1))))=1

x=0;
F_x=(((z1*K1)/(1+((K1-1)*x)))+((z2*K2)/(1+((K2-1)*x)))+((z3*K3)/(1+((K3-1)*x)))-1);
F_a=F_x;

x=0.9;
F_x=(((z1*K1)/(1+((K1-1)*x)))+((z2*K2)/(1+((K2-1)*x)))+((z3*K3)/(1+((K3-1)*x)))-1);
F_b=F_x;
A=0;
B=0.9;
i=1;
while(i==1)
  a=A;
  F_a=(((z1*K1)/(1+((K1-1)*a)))+((z2*K2)/(1+((K2-1)*a)))+((z3*K3)/(1+((K3-1)*a)))-1);
  b=B;
  F_b=(((z1*K1)/(1+((K1-1)*b)))+((z2*K2)/(1+((K2-1)*b)))+((z3*K3)/(1+((K3-1)*b)))-1);
  x1=((a*F_b)-(b*F_a))/(F_b-F_a);
  F_x1=(((z1*K1)/(1+((K1-1)*x1)))+((z2*K2)/(1+((K2-1)*x1)))+((z3*K3)/(1+((K3-1)*x1)))-1);
  
  if((F_a*F_x1)<0) then
    flag=1;
    A=a;
    B=x1;
  else((F_x1*F_b)<0)
    flag=2;
    A=x1;
    B=b;  
  end
  x1_a=approx(x1,4);
  b_a=approx(b,4);
  a_a=approx(a,4);
  if(x1_a==b_a)
    V=approx(x1,4);
    i=0;
    break; 
  elseif(x1_a==a_a)
    root=approx(x1,4);
    i=0;
    break;   
  end    
  
end
disp(V,'Hence By solving the polynomial V = ')
L=1-V;
//from eqn 10.16
//yi=(zi*Ki)/(1+(V*(Ki-1)))
y1=approx((z1*K1)/(1+((K1-1)*V)),4);
y2=approx((z2*K2)/(1+((K2-1)*V)),4);
y3=approx((z3*K3)/(1+((K3-1)*V)),4);
x1=approx(y1/K1,4);
x2=approx(y2/K2,4);
x3=approx(y3/K3,4);
y=[y1 y2 y3];
x=[x1 x2 x3];
disp(L,'Moles Of liquid')
disp(V,'Moles Of vapor')
disp(x,'Mole fraction Of liquid')
disp(y,'Mole fraction Of vapor')

//End