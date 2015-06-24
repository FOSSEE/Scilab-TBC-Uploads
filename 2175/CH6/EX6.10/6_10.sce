clc;
pO=7;//bar
VO=1.5;//m^3
R_=8.3145;
TO=313;//K
nO=pO*VO*10^5/(R_*TO*10^3);

pC=1;//bar
VC=3;//m^3
TC=288;//K
nC=pC*VC*10^5/(R_*TC*10^3);

cvO=21.07;
cvC=20.86;
U1=nO*cvO*TO+nC*cvC*TC;
U2_T=nO*cvO+nC*cvC;

T=U1/U2_T;

p=(nO+nC)*R_*T*10^3/(VO+VC)/10^5;
disp("final temperature and pressure of mixture is:");
disp("bar",p,"K",T)

//part(II)
VA=4.5;//m^3
SA_S1_O=nO*R_*log(VA/VO);
SA_S2_O=nO*cvO*log(TO/T);
q1=SA_S1_O-SA_S2_O;

SA_S1_C=nC*R_*log(VA/VC);
SA_S2_C=nC*cvC*log(TC/T);
q2=SA_S1_C-SA_S2_C;

disp("change in entropy is:");
disp("kJ/k",q1+q2);
