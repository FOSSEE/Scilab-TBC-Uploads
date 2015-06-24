clear
clc
disp('the first row of A denotes the no. of students falling in the marks group starting from (5-10)...till (40-45)')
A(1,:)=[5 6 15 10 5 4 2 2];
disp('the second row denotes cumulative frequency (less than)')
A(2,:)=[5 11 26 36 41 45 47 49]
disp('the third row denotes cumulative frequency (more than)')
A(3,:)=[49 44 38 23 13 8 4 2]
disp('median falls in the class (15-20) = l+((n/2-c)*h)/f=')
15+((49/2-11)*5)/15
disp('lower quartile also falls in the class (15-20)=')
Q1=15+((49/4-11)*5)/15
disp('upper quartile also falls in the class (25-30)=')
Q3=25+((3*49/4-36)*5)/5
disp('semi interquartile range=')
(Q3-Q1)/2   