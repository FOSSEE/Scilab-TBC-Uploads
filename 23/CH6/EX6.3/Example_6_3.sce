clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=ICPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=((A)*log(t))+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction

function[Q]=ICPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction

//Example 6.3
//Caption : Program to find Entropy and Enthalpy of Saturated isobutane Vapor 

//Given Values

T0=300;//[K]
T=360;//[K]
R=8.314;
P=15.14;//[bar]
A=1.7765;
B=33.037*10^-3;
C=0;
D=0;
H0=18115;  //J/mol
S0=295.976;//J/mol/K

//Graph
X=[0,0.10,0.50,2,4,6,8,10,12,14,15.41];
Y1=[1.780,1.700,1.514,1.293,1.290,1.395,1.560,1.777,2.073,2.432,2.720];//[(dZ/dT)p/P]
Y2=[2.590,2.470,2.186,1.759,1.591,1.544,1.552,1.592,1.658,1.750,1.835];//[-(Z-1)/P]
subplot(1,2,1);
plot2d(Y1,X);
xgrid();
xtitle("(a)","P(bar)","[(dZ/dT)p/P]X10^4(K^-1 bar^-1)");
subplot(1,2,2);
plot2d(Y2,X);
xgrid();
xtitle("(b)","P(bar)","[-(Z-1)/P]X10^2(bar^-1)");


//Area Under the Curve (a)
Y1=Y1*10^-4;
A1=0;
for i=2:11;
  A1=A1+((X(i-1)-X(i))*Y1(i));
end  
disp('(X 10^-4) K^-1',A1*10000,'Area under the graph(a)')
//Area Under the Curve (b)
Y2=Y2*10^-2;
A2=0;
for i=2:11;
  A2=A2+((X(i-1)-X(i))*Y2(i));
end  
disp(approx(A2,4),'Area under the graph(b)')


K=A1*T;//Hr/RT
//From Eqn(6.47)
Hr=R*T*(K);//[J/mol]
//From Eqn(6.48)
Sr=R*(K-(A2));//[J/mol/K]

//From Eqn(6.49) and Eqn(6.50)
H1=R*ICPH(T0,T,A,B,C,D);
S1=R*ICPS(T0,T,A,B,C,D);

H=H0+H1+Hr;
S=approx(S0+S1+Sr-(R*log(P)),3);

disp('J/mol',H,'Enthalpy')
disp('J/mol/K',S,'Entropy')
disp('Note: The Answer is different with that of the Book because the Method Used to find the Area under the Graph is done by finding the area of small       Rectangles')

//End