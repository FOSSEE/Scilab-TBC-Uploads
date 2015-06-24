//Exa2.2
clc;
clear;
close;
//given data for table with wooden top
wood=0.1;//in m^3
WoodCost=12000;//in Rs/m^3
Table=1;//in units
TableTopCost=3000;//in Rs/unit
LegBushes=4;//units
LegBushesCost=10;//Rs/units
Nails=100;//in grams
NailsCost=300;//in Rs/Kg
TotalLabour=15;//in Hours
TotalLabourCost=50;//in Rs/Hours
//Part a : Cost of table with wooden top
WoodCostframelegs=WoodCost*wood;//in Rs
WoodTopCost=3000;//in Rs
BushesCost=LegBushesCost*LegBushes;//in Rs
NailsCost=Nails*NailsCost/1000;//in Rs
LabourCost=TotalLabourCost*TotalLabour;//in Rs
TotalCost1=WoodCostframelegs+WoodTopCost+BushesCost+NailsCost+LabourCost;//in Rs
disp(TotalCost1,"Cost of Table with wooden top in Rs : ");

//given data for table with granite top
wood=0.15;//in m^3
WoodCost=12000;//in Rs/m^3
Granite=1.62;//in m^2
GraniteCost=800;//in Rs/m^2
LegBushes=4;//units
LegBushesCost=25;//Rs/units
Nails=50;//in grams
NailsCost=300;//in Rs/Kg
TotalLabour=8;//in Hours
TotalLabourCost=50;//in Rs/Hours
//Part b : Cost of table with granite top
WoodCostframelegs=WoodCost*wood;//in Rs
GraniteTopCost=Granite*GraniteCost;//in Rs
BushesCost=LegBushesCost*LegBushes;//in Rs
NailsCost=Nails*NailsCost/1000;//in Rs
LabourCost=TotalLabourCost*TotalLabour;//in Rs
TotalCost2=WoodCostframelegs+GraniteTopCost+BushesCost+NailsCost+LabourCost;//in Rs
disp(TotalCost2,"Cost of Table with Granite top in Rs : ");
//Economic Advantage
disp(TotalCost1-TotalCost2,"Economic advantage of table with granite top in Rs : ")