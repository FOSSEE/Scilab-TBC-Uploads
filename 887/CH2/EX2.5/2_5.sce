clc
//ex2.5
i_s=15;      //source current
R_1=10;
R_2=30;
R_3=60;
R_eq=1/((1/R_2)+(1/R_3));      //R_2 and R_3 in parallel
i_1=R_eq*i_s/(R_1+R_eq);      //current through R_1(current-division principle)
disp(i_1,'current through R1 in amperes from resistance method')
//we can also do the above calculations using conductances as shown below.
//Conductances of respective resistances
G_1=1/R_1;
G_2=1/R_2;
G_3=1/R_3;
i_1=G_1*i_s/(G_1+G_2+G_3);
disp(i_1,'current through R1 in amperes from conductance method')
disp('We get the same alue in both methods')
