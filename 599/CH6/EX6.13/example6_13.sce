
clear;
clc;
printf("\t Example 6.13\n");

//Ls/ A*Nc is unknown;

Xcr=0.14;             //crtical moisture content
x1=0.3;                //moisture content on wet basis
x2=0.1;                //moisture content on wet basis
X1=x1/(1-x1);               //moisture content on dry basis intially
X2=x2/(1-x2);              //moisture content on dry basis finally after drying
Xbar=0.04;            //equillibrium moisture 
tbar=5;              //time needed to dry from 30 to 10 percent on bone dry basis

    //let Ls / A*Nc be = p
p=poly([0],'p');        //calc. of Ls / A*Nc be = p value
x=roots(tbar-p * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar))));

//new X1 AND X2 are now given as follows
x1=.3;                //new moisture content on wet basis
x2=0.06;                //new moisture content on wet basis
X1=x1/(1-x1);              //new moisture content on dry basis intially
X2=x2/(1-x2);              //new moisture content on dry basis finally after drying
tbar=x * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 30 to 10  percent moisture under same drying conditions is :%f hr",tbar);

//end