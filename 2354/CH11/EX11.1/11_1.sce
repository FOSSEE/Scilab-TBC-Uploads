//example 11.1
clc; funcprot(0);
// Initialization of Variable
gas=42.5;//gamma of gasoline
hgas=17.0;//height of gasoline
hw=3.0;//height of water
wat=62.4;//gamma of water
k=gas*hgas/144.0;//p1-p0
disp(k,"pressure difference in lbf/in^2");
disp(k*144/wat,"pressure difference in feet of water");
k1=wat*hw/144.0+k;//p2-p0
disp(k1*144,"pressure difference in lbf/ft^2");
disp(k1,"pressure difference in lbf/in^2");
disp(k1*144/wat,"pressure difference in feet of water");
clear()
