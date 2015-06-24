//Exa3
clc;
clear;
close;
//given data :
MaterialsCost=1800;//in Rs.
LabourCost=1700;//in Rs.
Overhead=500;//in Rs.
TotalCost=MaterialsCost+LabourCost+Overhead;//in Rs.
MaterialsPurchaseCost=37500;//in Rs.
WagesAmounted=39900;//in Rs.
OverheadAmounted=10640;//in Rs.
ActualMaterialCost=34250;//in Rs.
FinishedProduction=1250;//in Units
work_in_processInventory=250;//in Units

disp("Statement of Production : ");
disp("(Given in form of table below)");
disp("                                            Units     Incomplete     Material     Labour     Overhead     Total");
disp("Opening Inventory(to be completed 60%)       200          60%           120         120         120");
disp("Input                                        1300         100%          1300        1300        1300");
disp("                                                                        1420        1420        1420");
disp("LESS : Closing Stock                         250          20%           50");
disp("                                                          40%                       100         100");
disp("                                                                        1370        1320        1320");
disp("Current Cost                                                            34250       39900       10640");
disp("Current Cost per unit                                                   25          30.23       8.06        63.29");

disp("");
disp("Cost of opening work-in-process for completion(200 units)");
MaterialsToComplete=120*25;//in Rs.
LabourToComplete=120*30.23;//in Rs.
OverheadsToComplete=120*25;//in Rs.
Total=MaterialsToComplete+floor(LabourToComplete)+floor(OverheadsToComplete);//in Rs.
//Work-in-process as on 1st Jun
WorkInJun=4000;//in Rs.
CurrentProduction=(1250-200)*63.29;//in Rs.
//Cost of Work-in-process 30th Jun(250 Units)
MaterialC=200*25;//in Rs.
LabourC=150*30.23;//in Rs.
OverheadC=150*8.06;//in Rs.
disp("Cost of Work-in-process 30th Jun(250 Units) : ");
disp("Costs for:");
disp("Material : "+string(MaterialC));
disp("Labour : "+string(LabourC));
disp("Overhead : "+string(OverheadC));
disp("");
disp("Process Cost Sheet(Given in Tabularr form below) : ");
disp("Statement of Production : ");
disp("(Given in form of table below)");
disp("Particulars                                 Units     completion     Total Cost     Cost Per Unit");
disp("Opening Work-in-Process");
disp("Materials                                     200          40%           1800");
disp("Labour                                                                   1700");
disp("Overhead                                                                 500            4000");
disp("Input added : ");
disp("Materials                                     1300                       34250");
disp("Labour                                                                   39900");
disp("Overhead                                                                 10640          84790");
disp("                                                                                        88790")
disp("LESS : Closing work-in-process             250");
disp("Materials                                                  80%           5000");
disp("Labour                                                     60%           4534");
disp("Overhead                                                   60%           1209           10743               43.00");
disp("Cost of Production                            1250        100%                          78047               62.44")
