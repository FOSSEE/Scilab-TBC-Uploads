clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.1
//Caption : Program to Plot the Graphs of P vs x1,y1 and t vs x1,y1

//Antoinie Equations

//ln P1_sat=14.2724-(2945.47/(T-49.15))  [KPa]
//ln P2_sat=14.2043-(2972.64/(T-64.15))  [KPa]

//(a) Graph Showing P vs x1 and P vs y1 for T=348.15K
T=348.15;//[K]
//using BUBL P calculations

//Calculation of P1_sat and P2_sat at T=348.15K
P1_sat=approx(exp(14.2724-(2945.47/(T-49.15))),2)  //KPa
P2_sat=approx(exp(14.2043-(2972.64/(T-64.15))),2)  //KPa

//Using Eqn P=P2_sat+(P1_sat-P2_sat)x1

x=[0:0.2:1];
P=approx(P2_sat+((P1_sat-P2_sat)*x),2);
y=approx(x*P1_sat./P,4);

disp('Explanations Of graph')

Ans=[x',y',P'];
disp(Ans,'   x1      y1       P/PKa')

y1=0.6;
y2=1-y1;
P_dew=approx(1/((y1/P1_sat)+(y2/P2_sat)),2)
x1=approx(y1*P_dew/P1_sat,4)

// Plotting the graph
subplot(1,2,1);
T=348.15;//[K]

P1_sat=approx(exp(14.2724-(2945.47/(T-49.15))),2)  //KPa
P2_sat=approx(exp(14.2043-(2972.64/(T-64.15))),2)  //KPa

x=[0:0.2:1];
P=approx(P2_sat+((P1_sat-P2_sat)*x),2);
y=approx(x*P1_sat./P,4);

mtlb_axis('auto');
plot(x,P,'g-')  //P vs x1
plot(y,P,'b-')  //P vs y1
x=[0,0.1];
P=[P2_sat,P2_sat];
plot(x,P,'--')  //P2_sat
x=[0.9,1];
P=[P1_sat,P1_sat];
plot(x,P,'r--') //P1_sat

x1=0.6;
P_b=approx(P2_sat+((P1_sat-P2_sat)*x1),2);
y1=approx(x1*P1_sat/P_b,4);
x=[x1,y1];
P=[P_b,P_b];
plot(x,P,'bo-')  //b--b'

y1=0.6;
y2=1-y1;
P_c=approx(1/((y1/P1_sat)+(y2/P2_sat)),2)
x1=approx(y1*P_c/P1_sat,4)

x=[x1,y1];
P=[P_c,P_c];
plot(x,P,'ro-')  //c'--c

P=[(P_b+10),P_b,P_c,(P_c-10)];
x=[0.6,0.6,0.6,0.6];
plot(x,P,'go-')  //a--b--c--d--0.6

P=[(P_c-10),30];
x=[0.6,0.6];
plot(x,P,'yo--')

P=[110,80];
x=[0.6,0.6];
plot(x,P,'w')
legend('P vs x1(Liquid)','P vs y1(Vapor)','P2_sat','P1_sat',"b--b''","c''--c",'a--b--c--d--0.6')
xtitle('(a)T/t=348.15K','x1,y1','P/Kpa')

disp("This is the liquid-phase composition at point c''")

//(b) Graph showing (t vs x1) and (t vs y1) for a pressure of 70KPa
//Example 10.2(b)
P=70;//[KPa]

T1_sat=approx(2945.47/(14.2724-log(P))+49.15,2);
T2_sat=approx(2972.64/(14.2043-log(P))+64.15,2);

T=[T1_sat,347.15,351.15,355.15,359.15,T2_sat];

P1_sat=approx(exp(14.2724-(2945.47./(T-49.15))),2);  //KPa
P2_sat=approx(exp(14.2043-(2972.64./(T-64.15))),2);  //KPa

x=approx((P-P2_sat)./(P1_sat-P2_sat),3);
y=approx((x.*P1_sat)/P,3);

Ans=[x',y',T'];
disp(Ans,'   x1       y1       T/t(K/C`)')

//at x1=0.6;
x1_b=0.6;
x2_b=1-x1_b;

T_a=347.15;// Intermediate Temperature  (Point a in graph)
P1_sat_a=approx(exp(14.2724-(2945.47./(T_a-49.15))),2);  //KPa
P2_sat_a=approx(exp(14.2043-(2972.64./(T_a-64.15))),2);  //KPa
alpha=P1_sat_a/P2_sat_a;  //Initial
a=T_a;
i=-1;
while(i==-1)
  P2_sat_b=P/((x1_b*alpha)+x2_b);
  b=approx(2972.64/(14.2043-log(P2_sat_b))+64.15,2);
  dT=abs(a-b);
  if(dT==0)
    i=0;
    T_b=b;
  end   
  alpha=exp(0.0681-(2945.47/(b-49.15))+(2972.64/(b-64.15)));  //Eqn C
  a=b;
end
P1_sat_b=approx(exp(14.2724-(2945.47./(T_b-49.15))),2);  //KPa
y1_b=approx((x1_b*P1_sat_b)/P,4);  //b`

disp('K',T_b,'Hence by iteration Temp(Temp at b) at x1=0.6 is ')
disp('KPa',P1_sat_b,'Hence by iteration P1_sat at x1=0.6 is ')
disp(y1_b,'Composition of Vapor(b`) at x1=0.6')


//At y1=0.6
y1_c=0.6;
y2_c=1-y1_c;
T_d=355.15;// Intermediate Temperature  (Point a in graph)
P1_sat_d=approx(exp(14.2724-(2945.47./(T_d-49.15))),2);  //KPa
P2_sat_d=approx(exp(14.2043-(2972.64./(T_d-64.15))),2);  //KPa
alpha=P1_sat_d/P2_sat_d;  //Initial
d=T_d;
i=-1;
while(i==-1)
  P1_sat_c=P*(y1_c+(y2_c*alpha));
  c=approx(2945.47/(14.2724-log(P1_sat_c))+49.15,2);
  dT=abs(d-c);
  if(dT==0)
    i=0;
    T_c=c;
  end   
  alpha=exp(0.0681-(2945.47/(c-49.15))+(2972.64/(c-64.15)));  //Eqn C
  d=c;
end
P1_sat_c=approx(exp(14.2724-(2945.47./(T_c-49.15))),2);  //KPa
x1_c=approx((y1_c*P)/P1_sat_c,4);  //c`

disp('K',T_c,'Hence by iteration Temp(Temp at b) at y1=0.6 is ')
disp('KPa',P1_sat_c,'Hence by iteration P1_sat at y1=0.6 is ')
disp(x1_c,'Composition of liqiud(c`) at y1=0.6')

//Graph
subplot(1,2,2);
T=linspace(T1_sat,T2_sat,10); 

P1_sat=approx(exp(14.2724-(2945.47./(T-49.15))),2);  //KPa
P2_sat=approx(exp(14.2043-(2972.64./(T-64.15))),2);  //KPa

x=approx((P-P2_sat)./(P1_sat-P2_sat),3);
y=approx((x.*P1_sat)/P,3);

plot(x,T,'g-');    
plot(y,T,'b-');  
  
xsat=[0,0.1];
T2sat=[T2_sat,T2_sat];
plot(xsat,T2sat,'--')  //T2_sat

xsat=[0.9,1];
T1sat=[T1_sat,T1_sat];
plot(xsat,T1sat,'r--') //T1_sat

Tcc=[T_c,T_c];
xc=[x1_c,y1_c];
plot(xc,Tcc,'ro-')  //c--c'

Tbb=[T_b,T_b];
xb=[x1_b,y1_b];
plot(xb,Tbb,'bo-')  //b--b'

Tabcd=[T_d,T_c,T_b,T_a];
xabcd=[0.6,0.6,0.6,0.6];
plot(xabcd,Tabcd,'go-')  //a--b--c--d--0.6

Tao=[T_a,340];
xao=[0.6,0.6];
plot(xao,Tao,'yo--')
legend('T vs x1(Liquid)','T vs y1(Vapor)','T2_sat','T1_sat',"c''--c","b--b''",'d--c--b--a--0.6')
xtitle('(b)P=70KPa','x1,y1','T(K)')

//End