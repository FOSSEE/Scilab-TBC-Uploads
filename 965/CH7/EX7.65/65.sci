clc;
clear all;
disp("Compare HT coefficients")
disp("In case of turbulent tube flow, the average heat transfer coefficient is given by ")
disp("Nu=h*d/k=0.023 *Re^0.8*Pr^0.333")
disp("or, h = k*0.023 *Re^0.8*Pr^0.333/d")
disp("where Re= u*d/v ")
disp("thus h = 0.023*k/v^0.28*Pr^0.333*U^0.8/d^0.2")
disp("i) when the flow velocity and the fluid properties remain unchanged")
disp("h2/h1 =(d1/d2)^0.2=(1/2)^0.2 = 0.87")
disp("this shows that heat transfer coefficient decreases to 0.87 when there is two-flod increase in the diameter of tube")
disp("ii) when the tube diameter and fluid properties remain same")
disp("h2/h1 =(u2/u1)^0.8 =2^0.8 =1.74 ")
disp("this shows that the heat transfer is increases to 1.74 times when there is a two-fold increase in flow velocity")

