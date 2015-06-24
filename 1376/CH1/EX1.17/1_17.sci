//1.17
clc;
Y=90;
X=89;
Error_absolute=Y-X;
disp(Error_absolute,'absolute Error')
Error_relative=(Y-X)*100/Y;
disp(Error_relative,'relative Error (percent)=')
Accuracy_relative=1-Error_relative;
disp(Accuracy_relative,'Accuracy relative=')
Accuracy_percentage=100*Accuracy_relative;
disp(Accuracy_percentage,'Accuracy(percentage)=') 