//Caption: Mode of grouped data
//Example3.10
//Page47
clear;
clc;
X = [0,2;2,4;4,6;6,8;8,10;10,12;12,14;14,16;16,18];
f = [10,15,20,30,8,5,4,3,5];
[Maxf,i]= max(f);
L = X(i,1); //Lower Limit of the Modal class
C = diff(X(i,:)); //Width of the class interval
f1 = abs(f(i)-f(i-1));//Absolute difference between freq. of the modal class and
//that of its immediately preceding class
f2 = abs(f(i)-f(i+1));//Absolute difference beween freq. of the modal class and 
//that of its immediately succeeding class
Mode = L+((f1/(f1+f2))*C); 
disp(Mode,'Mode of the annual revenues of the firms is =')
disp('crores')
//Result
//Mode of the annual revenues of the firms is =   
// 
//    6.625  
// 
// crores