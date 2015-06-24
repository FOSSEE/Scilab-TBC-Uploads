clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.3
//Caption : Program to Find Pressure,Temperature and Composition for a system

//Equations to be Used
// ln v1=A*(x2^2)  ln v2=A*(x1^2)  Where A=2.771-0.00523T

//Antoine Equations
//ln P1_sat = 16.59158-(3643.31/(T-33.424)) 
//ln P2_sat = 14.25326-(2665.54/(T-53.424))
//P = E(xi * Vi * Pi_sat)  E--Summation        Eqn 10.6
//P = 1/E(yi / (vi * Pi_sat))  E--Summation    Eqn 10.7

//(a) Calculate P and (yi) , for T=318.15K and x1=0.25

//BULB P Calculation
T=318.15;//[K]  Given
x1=0.25; //Given
x2=1-x1;
P1_sat = approx(exp(16.59158-(3643.31/(T-33.424))),2);//[KPa]
P2_sat = approx(exp(14.25326-(2665.54/(T-53.424))),2);//[KPa]
A=approx(2.771-(0.00523*T),3);
v1=approx(exp(A*(x2^2)),3);
v2=approx(exp(A*(x1^2)),3);

//Form Eqn(10.6)
P_a=approx((x1*v1*P1_sat)+(x2*v2*P2_sat),2);//[KPa]
y1_a=approx((x1*v1*P1_sat)/P_a,3);
y2_a=approx((x2*v2*P2_sat)/P_a,3);

disp('(a)P and [yi] for T=318.15K and x1=0.25')
disp('BUBL P calculations')
disp('KPa',P_a,'P = ')
disp(y1_a,'y1 = ')
disp(y2_a,'y2 = ')

//(b) Calculate P and (xi) , for T=318.15K and y1=0.60

//DEW P calculation
y1=0.6;
y2=1-y1;
T=318.15;//[K]
P1_sat = approx(exp(16.59158-(3643.31/(T-33.424))),2);//[KPa]
P2_sat = approx(exp(14.25326-(2665.54/(T-53.424))),2);//[KPa]
A=approx(2.771-(0.00523*T),3);
v1=0.1;//Assumed
v2=0.1;//Assumed
a1=v1;
a2=v2;
i=-1;
while(i==-1)
  P=approx(1/((y1/(a1*P1_sat))+(y2/(a2*P2_sat))),2); 
  x1=approx(y1*P/(a1*P1_sat),4);
  x2=1-x1;
  b1=approx(exp(A*(x2^2)),4);
  b2=approx(exp(A*(x1^2)),4);
  dt=abs(b1-a1);
  if(dt==0)
    i=0;
    v1=b1;
    v2=b2;
    break;
  end
  a1=b1;
  a2=b2;
end
x1_b=x1;
x2_b=1-x1_b;
P_b=P;
v1_b=v1;
v2_b=v2;
disp('(b)P and [xi] for T=318.15K and y1=0.60')
disp('DEW P calculations')
disp('kPa',P_b,'P = ')
disp(x1_b,'x1 = ')
disp(x2_b,'x2 = ')

//(c) Calculate T and (yi) for P = 101.33 KPa and x1=0.85

//BUBL T calculation
P=101.33;
x1=0.85;
x2=1-x1;
T1_sat=approx((3643.31/(16.59158-log(P)))+33.424,2);
T2_sat=approx((2665.54/(14.25326-log(P)))+53.424,2);
T=(x1*T1_sat)+(x2*T2_sat);
a=T;//Initial
i=-1;
while(i==-1)
  A=approx(2.771-(0.00523*a),4);
  v1=approx(exp(A*(x2^2)),4);
  v2=approx(exp(A*(x1^2)),4);
  P1_sat = approx(exp(16.59158-(3643.31/(a-33.424))),2);//[KPa]
  P2_sat = approx(exp(14.25326-(2665.54/(a-53.424))),2);//[KPa]
  alpha=P1_sat/P2_sat;  
  P1_sat=approx(P/((x1*v1)+(x2*v2/alpha)),2);
  b=approx((3643.31/(16.59158-log(P1_sat)))+33.424,2);
  dt=abs(b-a);
  if(dt==0)
    i=0;
    T=b;
    break;
  end
  a=b;
end
T_c=T;
y1_c=approx(x1*v1*P1_sat/P,3);
y2_c=1-y1_c;
disp('(c)T and [yi] for P=101.33kPa and x1=0.')
disp('BUBL T calculations')
disp('K',T_c,'Temperature = ')
disp(y1_c,'y1 = ')
disp(y2_c,'y2 = ')

//(d) Calculate T and (xi) for P = 101.3 KPa and y1=0.4
P=101.3;
y1=0.4;
y2=1-y1;
T1_sat=approx((3643.31/(16.59158-log(P)))+33.424,2);
T2_sat=approx((2665.54/(14.25326-log(P)))+53.424,2);
T=(y1*T1_sat)+(y2*T2_sat);
v1=1;  //Initially
v2=1;  //Initially
a=T;//Initial
i=-1;
while(i==-1) 
  A=approx(2.771-(0.00523*a),4);
  P1_sat = approx(exp(16.59158-(3643.31/(a-33.424))),2);//[KPa]
  P2_sat = approx(exp(14.25326-(2665.54/(a-53.424))),2);//[KPa]
  alpha=P1_sat/P2_sat;
  x1=approx((y1*P)/(v1*P1_sat),4);
  x2=1-x1;
  v1=approx(exp(A*(x2^2)),4);
  v2=approx(exp(A*(x1^2)),4);
  P1_sat=P*((y1/v1)+(y2*alpha/v2));
  b=approx((3643.31/(16.59158-log(P1_sat)))+33.424,2);
  dt=abs(a-b);
  if(dt==0)
    T=a;
    i=0;
    break;
  end
  a=b;
end
T_d=T;
x1_d=x1;
x2_d=x2;
disp('(d)T and [xi] for P=101.33kPa and y1=0.40')
disp('DEW T calculations')
disp('K',T,'T = ')
disp(x1_d,'x1 = ')
disp(x2_d,'x2 = ')

//(e) Taz , (xi_az) and (yi_az)  for T = 318.15K 
T = 318.15;
// Relative Volatility   alpha_12=(y1/x1)/(y2/x2)
//At Azeotrope y1=x1 and y2=x2 and alpha_12=1
P1_sat = approx(exp(16.59158-(3643.31/(T-33.424))),2);//[KPa]
P2_sat = approx(exp(14.25326-(2665.54/(T-53.424))),2);//[KPa]
//From eqn (10.5) alpha_12=(v1*P1_sat)/(v2*P2_sat)
A=approx(2.771-(0.00523*T),4);

//When x1=0 v2=1 and v1=exp(A)
alpha_12_x10=P1_sat*exp(A)/P2_sat; 

//When x1=1 v1=1 and v2=exp(A)
alpha_12_x11=P1_sat/(P2_sat*exp(A));

//But this is not Azeotrope  (at Azeotrope alpha_12=1)

//v1_az/v2_az=(P2_sat/P1_sat)=K
K=P2_sat/P1_sat;

//ln(v1/v2)=ln(K)=A(1-(2*x1))
x1_az=approx((A-log(K))/(2*A),3);
x2_az=1-x1_az;
y1_az=x1_az;
y2_az=x2_az;
v1_az=approx(exp(A*(x2_az^2)),3);
v2_az=approx(exp(A*(x1_az^2)),3);
P_az=approx(v1_az*P1_sat,2);

disp('Azeotropic Pressure and Azeotropic Composition for T = 318.15K')
disp('KPa',P_az,'Azeotropic Pressure = ')
disp(x1_az,'x1_az')
disp(y1_az,'y1_az')

//End
