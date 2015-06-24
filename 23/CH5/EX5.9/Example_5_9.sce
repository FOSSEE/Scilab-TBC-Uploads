clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 5.9
//Caption : Program to find the Lost Work in Heat Exchangers

//Given Values

T_H1=400;//[K]
T_H2=350;//[K]
T_C1=300;//[K]
T_sigma=300;//[K]
rn_H=1;//[mol/s]
R=8.314;
Cp=(7/2)*R;

T_C2_a=T_H2-10;
T_C2_b=T_H1-10;

//Figure
mtlb_axis('auto');
subplot(1,2,1);
X=[0,1];
Y=[T_C1,T_C2_a];
plot2d(X,Y);
Y=[T_H1,T_H2];
plot2d(X,Y,style=3,rect=[0,290,1,410]);
legend('Tc','Th')
X=[1,1];
Y=[290,410];
plot2d(X,Y);
X=[0,0.25];
Y=[T_C1,T_C1];
plot(X,Y,'--');
Y=[T_H1,T_H1];
plot(X,Y,'--');
X=[0.75,1];
Y=[T_C2_a,T_C2_a];
plot(X,Y,'--');
Y=[T_H2,T_H2];
plot(X,Y,'--');
xtitle("(a)Case 1,Cocurrent","Qc","T");

subplot(1,2,2);
X=[0,1];
Y=[T_C1,T_C2_b];
plot2d(X,Y);
Y=[T_H2,T_H1];
plot2d(X,Y,style=3,rect=[0,290,1,410]);
legend('Tc','Th')
X=[1,1];
Y=[290,410];
plot2d(X,Y);
X=[0,0.25];
Y=[T_C1,T_C1];
plot(X,Y,'--');
Y=[T_H2,T_H2];
plot(X,Y,'--');
X=[0.75,1];
Y=[T_C2_b,T_C2_b];
plot(X,Y,'--');
Y=[T_H1,T_H1];
plot(X,Y,'--');
xtitle("(b)Case 2,Countercurrent","Qc","T");

//Solution
//Equation to be used
//(rn_H*Cp(T_H2-T_H1))+(rn_C*Cp(T_C2-T_C1))=0  Eq(A)
//del_rS=rn_H*Cp*(ln(T_H2/T_H1)+kln(T_C2/T_C1))  k=rn_C/rn_H  r-->Rate  Eqn(B)
//rW_lost=T_sigma*del_rS  Eqn(C)

//(a)-Cocurrent
//by Eqn(A)
T_C2_a=T_H2-10;
k=(T_H1-T_H2)/(T_C2_a-T_C1);//k=rn_C/rn_H
//By Eqn(B)
del_rS=approx(rn_H*Cp*(log(T_H2/T_H1)+(k*log(T_C2_a/T_C1))),3);//[J/K/s]
//By Eqn(C)
rW_lost=approx(T_sigma*del_rS,1);//[J/s]or[W]
disp('(a)-Cocurrent')
disp('J/K/s',del_rS,'Rate Of change of entropy')
disp('J/s or W',rW_lost,'Lost Work')

//(b)-Countercurrent
T_C2_b=T_H1-10;
k=(T_H1-T_H2)/(T_C2_b-T_C1);//k=rn_C/rn_H
//By Eqn(B)
del_rS=approx(rn_H*Cp*(log(T_H2/T_H1)+(k*log(T_C2_b/T_C1))),3);//[J/K/s]
//By Eqn(C)
rW_lost=approx(T_sigma*del_rS,1);//[J/s]or[W]
disp('(b)-Countercurrent')
disp('J/K/s',del_rS,'Rate Of change of entropy')
disp('J/s or W',rW_lost,'Lost Work')

//End