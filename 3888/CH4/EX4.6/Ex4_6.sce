//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.6
//Scilab Version : 6.0.0    ; OS : Windows


clc;
clear;


k=0.6;
t=1.503032/0.6;                                                              //Time in hours
Df=3;                                                                        //Density factor 
P=30- 8*sin(k*t)+0.325*t;                                                    //Load variation at a power supply station in MW
i=1;
n=1;
while (t(i)<24)
t(i+1)=(2*n*%pi-1.503032)/0.6;
t(i+2)=(2*n*%pi+1.503032)/0.6;
if (t(i+1)<24)&(t(i+2)<24) then
    i=i+2;
else
    t(i+1)=25;
    i=i+1;
end
n=n+1;
end
P=30- 8*sin(k*t)+0.325*t;
Max_demand=max(P);                                                            //Maximum demand on the system in MW
Avg_load=(1/24)*(30*24+(8/0.6)*(cosd(0.6*24)-cosd(0.6*0))+0.325*24^(2)/2);    //Applying integration for power equation
Lf=Avg_load/Max_demand;                                                       //Load factor of the system
Total_load=Max_demand*Df;                                                     //Total installed load of the system in MW


printf("\nMaximum demand on the system is %.3f MW",Max_demand);
printf("\nLoad factor of the system %.3f",Lf);
printf("\nTotal installed load is %.3f MW",Total_load);
                                                                        //different t values cannot be obtained for section d so cannot be solved in scilab
                                                                        //Variation present in result due to wrong calculation of Avg load value in the book

