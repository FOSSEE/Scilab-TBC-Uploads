//Exa7
clc;
clear;
close;
disp("Process A Account");
disp("Particulars                 Units   Rupees     Particulars                     Units     Rupees");
disp("To units issued at Rs. 1    10000   10000      By normal wastage 3% of 10000     300          75");
disp("per unit                                       units sold at 25 Paisa/unit");
disp("To sundry materials                  1000      By Abnormal wastage               200         350");
disp("To labour                            5000      By process B output transfered   9500       16625");
disp("To Direct Expenses                   1050");
disp("                            10000   17050                                      10000       17050");
disp("");
disp("Process B Account");
disp("Particulars                  Units   Rupees     Particulars                      Units     Rupees");
disp("To Process A (output recd.)   9500   16625      By normal wastage 5% of 9500");
disp("                                                units sold at 50 Paisa/unit        475         238");
disp("To sundry materials                   1500      By process (output transf.)       9100       27300");
disp("To wages                              8000");
disp("To Direct Expenses                    1188");
disp("To Abnormal Effective or ");
disp("Abnormal gains                 75      225")
disp("                             9575    27538                                        9575      27538");
disp("");
disp("Process C Account");
disp("Particulars                  Units   Rupees     Particulars                      Units     Rupees");
disp("To Process B (output recd.)   9100   27300      By normal wastage 8% of 9100");
disp("                                                units sold at Rs. 1/unit           728         728");
disp("To sundry materials                    500");
disp("To wages                              6500      By Abnormal Wastage                272        1156");
disp("To Direct Expenses                    2009      By finished stock (output)        8100       34425");
disp("                              9100   36309                                        9100       36309");
//Calculation of Abnormal wastage and Abnormal Gain
//Process A :
CostOfAbnormalWastageA=16975*200/9700;//in Rupees
//Process B :
CostOfAbnormalWastageB=27075*75/9025;//in Rupees
//Process C :
CostOfAbnormalWastageC=35581*272/8372;//in Rupees
disp(CostOfAbnormalWastageA,"Process A: Cost Of Abnormal Wastage in Rs.");
disp(CostOfAbnormalWastageB,"Process B: Cost Of Abnormal Wastage in Rs.");
disp(CostOfAbnormalWastageC,"Process C: Cost Of Abnormal Wastage in Rs.");
disp("");
disp("Abnormal wastage account");
disp("Dr.                                                                                      Cr.");
disp("                         Units          Amount                                        Units          Amount");
disp("To Process A             200              350    By sales of wasted units: 200");
disp("To Process C             272             1156    Units of A @ 25 paisa/unit             50");
disp("                                                 272 units of Process C @ Rs. 1/unit   272             322");
disp("                                                 By Costing Profit & Loss Account                     1184");
disp("                                         1506                                                         1506");
disp("");
disp("Abnormal Gain Account");
disp("                                  Units     Amount                       Units     Amount");
disp("To shortfall in normal wastage of 75          38    By Process A           75        225");
disp("units @ 50 Paisa/each");
disp("To Costing Proit and Loss Account            187");
disp("                                             225                                     225");