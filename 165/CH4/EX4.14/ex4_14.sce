//Example 4.14
clc;

Rm=100;            //Internal resistence of current meter
//Given resistence values
//Also from the figure R1 is in series to (R2||R3)
//To determine % currnet through R3 
R1=1000;
R2=1000;
R3=1000;
Rt=R1+R2*R3/(R2+R3);    //Thevenins resistence across 
                        //terminals of the meter
Im=Rt*100/(Rt+Rm);      //Percentage current through meter
I=100-Im;               //Percentage error due to loading
disp(Im,'Percentage of expected current through meter')
disp(I,'Percentage error due to loading')