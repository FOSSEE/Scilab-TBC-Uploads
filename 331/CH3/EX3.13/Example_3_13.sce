//Caption: Harmonic Mean
//Example3.13
//Page51
clear;
clc;
X =input('Speed of exercise of patient in a week in km/Hr =');
n = length(X);
den = 0;
for i = 1:n
    den = (1/X(i))+den;
end
HM = n/den; //Harmonic Mean
disp('km/Hr',HM,'Average speed of patient in one week exercise is =')
//Result
//Speed of exercise of patient in a week in km/Hr =[3,4,4.5,5,3.5,4.75,4.25]
// 
// Average speed of patient in one week exercise is =   
// 
//    4.0297272  
// 
// km/Hr 