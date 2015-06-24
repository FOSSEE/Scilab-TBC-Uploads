//Caption: Weighted Arithmetic mean of Grouped data: Grading scheme
//Example3.5
//Page43
clear;
clc;
//Numerical of grade
A = 5;
C = 3;
D = 2;
E = 1;
X = [A,C,D,E,A]; //Numerical of grade
Grade = ['A','C','D','E','A'];
w = [2,1,3,2,1]; //Weigth assigned
n = length(X);
num =0;
den =0;
for i = 1:n
    num = num+X(i)*w(i);
    den = den+w(i);
end
Xw = num/den;
disp(Xw,'The weighted Score in the given subject of the given student is Xw=')
for i = 1:n
    if (X(i) == round(Xw)) then
        disp(Grade(i),'And the corresponding grade is =');
    end
end
//Result
//The weighted Score in the given subject of the given student is Xw=   
// 
//    2.8888889  
// 
// And the corresponding grade is = C  