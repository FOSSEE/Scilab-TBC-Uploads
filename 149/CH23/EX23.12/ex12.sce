clear
clc
disp('the first row of A denotes the no. of persons falling in the weight  group starting from (70-80)...till (140-150)')
A(1,:)=[12 18 35 42 50 45 20 8];
disp('the second row denotes cumulative frequency')
A(2,1)=12;
for i=2:8
  A(2,i)=A(2,i-1)+A(1,i);
  end
disp('median falls in the class (110-120) = l+((n/2-c)*h)/f=')
Q2=110+(8*10)/50
disp('lower quartile also falls in the class (90-100)=')
Q1=90+(57.5-30)*10/35
disp('upper quartile also falls in the class (120-130)=')
Q3=120+(172.5-157)*10/45
disp('quartile coefficient of skewness=')
(Q1 +Q3-2*Q2)/(Q3-Q1)