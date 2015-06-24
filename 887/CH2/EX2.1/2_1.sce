clc
//ex2.1
R_1=10;
R_2=20;
R_3=5;
R_4=15;
//We proceed through various combinations of resistances in series or parallel while we replace them with equivalent resistances  We start with R_3 and R_4.
R_eq_1=R_3+R_4;      //R_3 and R_4 in series
R_eq_2=1/((1/R_eq_1)+(1/R_2));      //R_eq_1 and R_2 in parallel
R_eq=R_1+R_eq_2;      //R_1 and R_eq_2 in series
disp(R_eq,'Equivalent resistance in ohms')
