//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-3 Ex3.6 Pg No. 114 
//Title: Optimum reaction temperature 
//===========================================================================================================
clear
clc
//INPUT
del_H=-20*10^3;//Heat of reaction(cal)
T_eq=[500 700];//Equivalent temperatures (K)
R=1.987;//Gas Constant (cal/mol K)
E2_by_E1=2;//Ratio of activation energy

//CALCULATION
T_opt(1)=T_eq(1)/(1+(log(E2_by_E1)*(R/(-del_H)))*T_eq(1));//Refer equation 3.63 Pg No. 113 
T_opt(2)=T_eq(2)/(1+(log(E2_by_E1)*(R/(-del_H)))*T_eq(2));
delta_T(1)=T_eq(1)-T_opt(1);
delta_T(2)=T_eq(2)-T_opt(2);


//OUTPUT
mprintf('\n  \t   \t Temperature_1\t Temperature_2  ');
mprintf('\n  \t   \t==================================');
mprintf('\n(T_eq - T_opt)(K):  \t%0.0f     \t\t%0.0f',delta_T(1),delta_T(2));
mprintf('\n   T_opt(K):\t \t%0.0f\t\t%0.0f', T_opt(1),T_opt(2));

fid= mopen('.\Chapter3-Ex6-Output.txt','w');
mfprintf(fid,'\n  \t   \t Temperature_1\t Temperature_2  ');
mfprintf(fid,'\n  \t   \t==================================');
mfprintf(fid,'\n(T_eq - T_opt)(K):  \t%0.0f     \t\t%0.0f',delta_T(1),delta_T(2));
mfprintf(fid,'\n   T_opt(K):\t \t%0.0f\t\t%0.0f', T_opt(1),T_opt(2));
mclose(fid);

//=========================================================END OF PROGRAM=====================================
//Disclaimer:There is an arithmetic error in  the optimum temperatures obtained in the textbook.  
// Based on the values (T_eq - T_opt)1=17 and  (T_eq - T_opt)2=32 the optimum temperatures obtained are 
// T_opt1=483 K and T_opt2=668 K respectively.
