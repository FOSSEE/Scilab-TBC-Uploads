//Exa2.5
clc;
clear;
close;
distance=2500;//in Km
TransCost=1;//in Rs/Kg/100Km
//given data for steel window frame
SteelFramePrice=1000;//in Rs/Unit
SteelFrameWeight=75;//in Kg/Unit
TotalCost1=SteelFramePrice+TransCost*SteelFrameWeight*distance/100;//in Rs
disp(TotalCost1,"Total cost of steel window frame per unit in Rs : ");

//given data for Aluminium window frame
AlumilniumFramePrice=1500;//in Rs/Unit
AlumilniumFrameWeight=28;//in Kg/Unit
TotalCost2=AlumilniumFramePrice+TransCost*AlumilniumFrameWeight*distance/100;//in Rs
disp(TotalCost2,"Total cost of Alumilnium window frame per unit in Rs : ");
disp(TotalCost1-TotalCost2,"DECISION : The total cost per unit of the aluminium window frame is less than that of steel window frame. Hence, Alumilnium window frame is recommended. The Economic advantage per unit of the Alumilnium window frame over steel window frame in Rs :  ")