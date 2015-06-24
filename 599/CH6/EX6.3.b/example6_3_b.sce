

clear;
clc;
printf("\t Example 6_3_b\n");


    //part(ii)
w1=5;                           //wet of wet solid
c1=.5/(1-.5);                   //moisture content per kg wet solid
w2=5*0.5;                       //moisture for 5kg wet solid
w3=w1-w2;                       //weight of dry solid
xbar=0.05;                      //equillibrium moisture content
Xbar=xbar/(1-xbar);             //equillibrium moisture content
Ls=2.5;                        //mass of bone dry solid ais the drying surface
A=5;                          //both upper surafce and lower surface are exposed
Nc=0.6;                        //in kg/m^2*hr
//from X=0.6 to 0.44 ,falling rate is non linear and from X=.44 to .14 falling rate is linear
X2=.15/(1-.15);
Xcr=.6;                      //kg moisture per kg dry solid
//so we can find time fro drying from 0.6 to .44 graphically and then for X=.44 to .1765
X1=1;                      //moisture content on dry basis  intially
t1=Ls/(A*Nc) *(X1-Xcr);        //time taken for constant drying rate(fromX=1 to .6)        
X1=.44;                      //moisture content on dry basis
t2=(Ls/(A*Nc))*((Xcr-Xbar)*log((X1-Xbar)/(X2-Xbar)));
t3=0.0336*Ls/Nc;              //fro graph we get from X=.6 to .44
ttotal=t1+t2+t3;                 //total time for drying the wet slab
printf("\n the total time for drying the wet slab to 15 percent moisture on wet basis is :%f min",ttotal*60);

//end