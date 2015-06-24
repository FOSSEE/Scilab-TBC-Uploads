//Exa1
clc;
clear;
close;
//given data :
Production=1000//units
CostOfProduction=1850;//in Rs.
NormalLoss=10//in %
ActualLoss=150;//in Units
ScrapValue=50;//in Paise/unit
NLoss=Production*NormalLoss/100;//in Units
UnitsProduced=Production-NLoss;//in Units
CostPerUnit=(CostOfProduction-50*10^-2*NLoss)/UnitsProduced;//in Rs.
AbnormalLoss=ActualLoss-NLoss;//in Units
CostOfAbnormalLoss=AbnormalLoss*CostPerUnit;//in Rs.
disp("Process account : ");
disp("Production in Units = "+string(Production)+"   Amount in Rs. "+string(CostOfProduction));
disp("By Normal Loss = "+string(NLoss)+"         Amount in Rs. "+string(NLoss*ScrapValue*10^-2));
disp("By Finished Goods = "+string(Production-ActualLoss)+"      Amount in Rs. "+string(CostPerUnit*(Production-ActualLoss)));
disp("");
disp("Abnormal Loss Account : ");
disp("To Process Account in Units = "+string(AbnormalLoss)+"   Amount in Rs. "+string(CostPerUnit*AbnormalLoss));
disp("By Scrap Value = "+string(AbnormalLoss)+"                Amount in Rs. "+string(AbnormalLoss*ScrapValue*10^-2));
disp("By Costing Profit and Loss A/c "+"    Amount in Rs. "+string(AbnormalLoss*ScrapValue*10^-2+NLoss*ScrapValue*10^-2));
disp("Total Amount in Rs."+string(25+75));