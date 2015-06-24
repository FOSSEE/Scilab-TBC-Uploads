
clear;
clc;
printf("\t Example 6.6\n");
            //wooden cloth is dried from 100 to 10 and then th efinal moisture content is changed to 16 percent from 10;

Xcr=0.55;             //crtical moisture content
X1=1;               //moisture content on dry basis intially
X2=.1;              //moisture content on dry basis finally after drying
Xbar=.06;            //equillibrium moisture 
    //since eqn 1 is tobe divided by eqn 2 so let the value of Ls/A*Nc be = 1 as it will be cancelled 
p=1;                  //let Ls/A*Nc be =p
p=poly([0],'p');        //calc. of time 1
tbar=1;                  //since the eqns are independent of tbar
t1=roots(tbar- p*((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)))); //------eqn1
X2bar=.16;    
p=poly([0],'p');        //calc. of time 2
t2=roots(tbar- p*((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2bar-Xbar))));//------eqn2

    //let t1/t2 be = k
k=t1/t2;
ans=1/k-1;            //reduction in time for drying 
printf("\n the reduction in time for drying is :%f percent",ans*100);
//end