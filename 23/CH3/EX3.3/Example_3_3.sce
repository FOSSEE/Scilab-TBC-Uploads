clear;
clc;

//Example 3.3
//Caption : Program to Find W,Q,del U and del H for the Figure

//Figure
V=2083:0.5:2853;
P=2853*V^-1;
P=P^1.67;
plot2d(V,P,style=1)
P=[1.698 1.698];
V=[1690 2083];
plot2d(V,P,style=2)
V=1690:0.5:2853;
P=2853*V^-1;
plot2d(V,P,style=3,rect=[1500,0.8,3000,2])
xtitle("Diagram for Ex.3.3","V","P")
legend("(a)","(b)","(c)")
clear;


//Given Values for the Ideal Gas
R=8.314;//J/Mol/K
Cv=(3/2)*R;//J/Mol/K
Cp=(5/2)*R;//J/Mol/K
gama=Cp/Cv;

//Solution

//(a)
//Adiabatic Compression
P1=1;//Pressure=1bar
T1=343.15;//Temp1=343.15K(70`C)
T2=423.15;//Temp2=423.15K(150`C)
Q_a=0;//Adiabatic Compression
del_U_a=round(Cv*(T2-T1));
W_a=del_U_a;
del_H_a=round(Cp*(T2-T1));
//Using Eq. (3.29b)
P2=P1*((T2/T1)^(gama/(gama-1)));//bar

//(b)
//cooled form 150`C to 70`C at Const pressure
//Using Eq.(3.27)
Q_b=round(Cp*(T1-T2));
del_H_b=Q_b;
//for Ideal Gas
del_U_b=round(Cv*(T1-T2));
//by First law
W_b=del_U_b-Q_b;//Joules

//(c)
//Expanded Isothermally to original state
del_U_c=0;//isothermal
del_H_c=0;//isothermal
Q_c=round(R*T1*log(P2/P1));
W_c=-Q_c;

//Entire process
Qt = Q_a+Q_b+Q_c;
Wt = W_a+W_b+W_c;
del_Ut=del_U_a+del_U_b+del_U_c;
del_Ht=del_H_a+del_H_b+del_H_c;


//PartII(Irreversible)
eta=.80;//Efficiency=80%

//(a)
Wm_a=round(W_a/eta);
Qm_a=del_U_a-Wm_a;//del_U remains same (by First Law)

//(b)
Wm_b=round(W_b/eta);
Qm_b=del_U_b-Wm_b;//del_U remains same (by First Law)

//(c)
Wm_c=round(W_c*eta);
Qm_c=del_U_c-Wm_c;//del_U remains same (by First Law)

//Entire Process
Qmt = Qm_a+Qm_b+Qm_c;
Wmt = Wm_a+Wm_b+Wm_c;


del_U_rev=[del_U_a,del_U_b,del_U_c];
del_H_rev=[del_H_a,del_H_b,del_H_c];
Qrev=[Q_a,Q_b,Q_c];
Wrev=[W_a,W_b,W_c];
Sumr=[del_Ut,del_Ht,Qt,Wt];

del_U_irev=del_U_rev;
del_H_irev=del_H_rev;
Qirev=[Qm_a,Qm_b,Qm_c];
Wirev=[Wm_a,Wm_b,Wm_c];
Sumi=[del_Ut,del_Ht,Qmt,Wmt];


disp('     (a)Adiabatic Compression')
disp('     (b)Cooled form 150`C to 70`C at Const pressure')
disp('     (c)Expanded Isothermally to original state')

disp('   Mechanically reversible');

Ans_rev=[del_U_rev',del_H_rev',Qrev',Wrev'];

disp(Sumr,'Sum',Ans_rev,'   del U   del H     Q        W')

disp('        Irreversible');

Ans_irev=[del_U_irev',del_H_irev',Qirev',Wirev'];

disp(Sumi,'Sum',Ans_irev,'   del U   del H     Q        W')

//End