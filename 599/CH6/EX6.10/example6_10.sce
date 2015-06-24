
clear;
clc;
printf("\t Example 6.10\n");
            //determine the drying condition of sample 0.3*0.3 size.sheet lost weight at rate of 10^-4 kg/s until the moisture fell to 60 percent

//Ls/ A*Nc is unknown;

Xcr=0.16;             //crtical moisture content
X1=.33;               //moisture content on dry basis intially
X2=0.09;              //moisture content on dry basis finally after drying
Xbar=.05;            //equillibrium moisture 
tbar=7;              //time needed to dry from 33 to 9 percent on bone dry basis

    //let Ls / A*Nc be = p
p=poly([0],'p');        //calc. of Ls / A*Nc be = p value
x=roots(tbar-p * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar))));

//new X1 AND X2 are now given as follows
X1=0.37;              //new moisture content on dry basis intially
X2=0.07;               //new moisture content on dry basis finally after drying
tbar=x * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 33 to 9  percent moisture under same drying conditions is :%f hr",tbar);

//end