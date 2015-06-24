
clear;
clc;
printf("\t Example 7.13\n");

C=800;                       //crystal formed in kg/hr
t2=49;                        //temp. of the entering fed
t1=27;                       //temp. of the product
t3=21;                       //temp. of the leaving cooling water
t4=15;                      //temp. of the enetring  cooling water
U=175;                      //overall heat transfer coefficient
F=140*151.85/277.85;       //feed concentration 
xf=F/240;                  //concentration in feed solution
P=74*151.85/277.85;        //product concentration 
xm=P/174;                  //concentration of FeSO4 in product solution
xc=151.85/277.85;         //
        //mass balance   F = M+C    ----eqn 1st
        //sloute balance F*xf = M*xm + C*xc ----eqn 2nd
//solving these we get
F=800*.3141/0.0866;        //feed conc.
M=F-C;                     //product concentration 
        //making energy balance
        //heat to be removed by cooling water =heat to be removed from solution + heat of crystallization
cp=.7;                    //specific heat capacity
dt=(t2-t1);              //change in temp.
dh=15.8;                 //heat of crystallization
Q=F*cp*dt+dh*C;          //heat to be removed by cooling water
cp=1;                    //specific heat capacity of water
dt=(t3-t4);                   //change in temp.
mw=Q/(cp*dt);            //cooling water needed
printf("\n cooling water requiement is :%f kg/hr",mw);
    //Q=U*A*(dtlm)
dtlm=((t2-t3)-(t1-t4))/(log((t2-t3)/(t1-t4)));//log mean temp. difference
A=Q/(U*dtlm);                    //area of the crystallizer section
l=A/1.3;
printf("\n length of crystallliser sections needed is :%f m",l);

//end