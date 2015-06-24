//Exa 6.11
clc;
clear;
close;
//Given Data:
disp("Assuming typical values for f as 0.2lamda in E-plane and 0.375lambda in H-plane");
//b=10*lambda ;mouth height
//delta=0.8*lambda
disp("Length :")
disp("L=b^2/(8*lambda)");
disp("L="+string(10^2/(8*0.2))+"lambda");
disp("Flare Angle (Theta):")
disp("Theta=atan(b/(2*L))");
disp("Theta="+string(10/(2*(10^2/(8*0.2))))+" radian");
Theta=(10/(2*(10^2/(8*0.2))))*180/%pi;//in Degree
disp(Theta,"Flare Angle Theta in degree : ");
disp("Flare Angle (fi):")
disp("fi=acos(L/(L+delta))=acos((10^2/(8*0.2))/((10^2/(8*0.2))+0.375))");
disp("fi="+string(acos((10^2/(8*0.2))/((10^2/(8*0.2))+0.375)))+" radian");
fi=(acos((10^2/(8*0.2))/((10^2/(8*0.2))+0.375)))*180/%pi;//in Degree
disp(fi,"Flare angle fi in degree : ");
disp("Width :");
disp("Width, a=2*L*tan(fi)");
disp("a="+string(2*62.5*tan((acos((10^2/(8*0.2))/((10^2/(8*0.2))+0.375)))))+"lambda");