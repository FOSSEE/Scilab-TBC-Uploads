//Exa 8
clc;
clear;
close;
//given data for machine A : 
OrgCost=56125;//in Rs.
//Additional Investment In working capital
AddInv=5000;//in Rs.
//Estimated Life
life=5;//inyears
//Estimated Salvage value
Salvage=3000;//in Rs.
//Average Income Tax Rate
Trate=60;//in %
//Average estimated income before tax and Depreciation
I1=13375;//in Rs.
I2=15375;//in Rs.
I3=17375;//in Rs.
I4=19375;//in Rs.
I5=21375;//in Rs.
//Total Income
I=I1+I2+I3+I4+I5;//in Rs.
//average income before tax and depreciation
AvgI=I/5;//in RS.
//Depreciation by straight line
D=(OrgCost-Salvage)/5;//in Rs
//Average Income after Depreciation
AvgID=AvgI-D;//in Rs.
//Tax by 60 %
Tax=(AvgID*60)/100;//in Rs
//Income after tax and depreciation
AvgITD=AvgID-Tax;//in Rs
//Average Rate of Return
ARR=(AvgITD/((OrgCost+Salvage)/2+AddInv))*100;//in Rs
disp(ARR,"Average Rate of Return of machine A in % : ")

//given data for machine B : 
OrgCost=56125;//in Rs.
//Additional Investment In working capital
AddInv=6000;//in Rs.
//Estimated Life
life=5;//inyears
//Estimated Salvage value
Salvage=3000;//in Rs.
//Average Income Tax Rate
Trate=60;//in %
//Average estimated income before tax and Depreciation
I1=21375;//in Rs.
I2=19375;//in Rs.
I3=17375;//in Rs.
I4=15375;//in Rs.
I5=13375;//in Rs.
//Total Income
I=I1+I2+I3+I4+I5;//in Rs.
//average income before tax and depreciation
AvgI=I/5;//in RS.
//Depreciation by straight line
D=(OrgCost-Salvage)/5;//in Rs
//Average Income after Depreciation
AvgID=AvgI-D;//in Rs.
//Tax by 60 %
Tax=(AvgID*60)/100;//in Rs
//Income after tax and depreciation
AvgITD=AvgID-Tax;//in Rs
//Average Rate of Return
ARR=(AvgITD/((OrgCost+Salvage)/2+AddInv))*100;//in Rs
disp(ARR,"Average Rate of Return of machine B in % : ")