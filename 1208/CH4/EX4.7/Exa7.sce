//Exa 7
clc;
clear; 
close;
//given data :
//Initial Investment
InINv=25000;//in Rs.
//Scrap Value
ScrapValue=5000//in Rs.
//Profit before tax and Depreciation
P1=5000;//in Rs
P2=6000;//in Rs
P3=7000;//in Rs
P4=8000;//in Rs
P5=10000;//in Rs
//Total Profit
P=P1+P2+P3+P4+P5;//in Rs.
//Average Profit
AvgP=P/5;//in Rs.
//Total Depreciation by straight line method
D=4000*5;//in Rs.
//Average Depreciation
AvgD=D/5;//in Rs
//Net income before tax
NetIncomebefTax=AvgP-AvgD;
//Tax 50%
Tax=(NetIncomebefTax*50)/100;// in Rs
//Average annual income after tax and depreciation
NetInc=NetIncomebefTax-Tax;//in RS.
//Average Investment
AvgInv=(InINv+ScrapValue)/2;//in Rs.
disp(AvgInv,"Average Investment in Rs. : ")
//Average rate of return on average Investment
ARR=(NetInc/AvgInv)*100;//in %
disp(ARR,"Average rate of return on average Investment in % : ")