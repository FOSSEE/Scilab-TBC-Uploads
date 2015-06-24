
clear;
clc;
printf("\t Example 7.12\n");

                //FeSO4.7H2O
C=1000;                      //crystal formed in kg
hf=26.002;                   //enthalpy of the feed at 80 degree in cal/g
hl=-1.33;                   //enthalpy of the saturated sol at 30 degree in cal/g
hc=-50.56;                 //enthalpy of crystal
xf=40/(100+40);
xm=30/(100+30);
xc=151.84/277.85;        //151.84 is the weight of FeSO4
        //component balance
//    F*xf = M*xm + C*xc    ------eqn 1st
//    F = M + 10000 + V     ------eqn 2nd
//    F*Hf = V*Hv + M*Hm +C*Hc-----eqn 3rd
Hf=26.002;                //enthalpy of the feed at 80 degree in cal/g
Hv=612;                  //
Hm=-1.33;               //enthalpy of the saturated sol at 30 degree in cal/g
Hc=-50.56;             //enthalpy of crystal leaving the crystalliser

//solving these we gt 
a=[1 -1 -1;.286 -.231 0;26.002 1.33 -612]
b=[10000;5470;-505600]
x=inv(a)*b;                    //solving out the values using matrices 
t1=x(1);                        //3 solution of the eqn
t2=x(2);
t3=x(3);
printf("\n the feed rate F= : %f kg/hr \n value of M= : %f kg/hr\n value of V=: %f kg/hr",t1,t2,t3);
//end