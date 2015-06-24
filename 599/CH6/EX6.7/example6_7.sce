
clear;
clc;
printf("\t Example 6.7\n");
            //assume rate of drying in the falling rate period is directly prporional to the free moisture content

//Ls/ A*Nc is unknown;

Xcr=0.14;             //crtical moisture content
X1=.3/(1-.3);         //moisture content on dry basis intially
X2=0.1/(1-0.1);       //moisture content on dry basis finally after drying
Xbar=.04;            //equillibrium moisture 
tbar=5;              //time needed to dry from 30 to 6 percent on bone dry basis

    //let Ls / A*Nc be = p
p=poly([0],'p');        //calc. of Ls / A*Nc be = p value
x=roots(tbar-p * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar))));
printf("\n the value of Ls/ A*Nc is :%f",x);

//new X1 AND X2 are now given as follows
X1=0.3/(1-.3);              //new moisture content on dry basis intially
X2=0.064;                 //new moisture content on dry basis finally after drying
tbar=x * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 30 to 6  percent moisture under same drying conditions is :%f hr",tbar);

//end