//Page Number: 216
//Example 4.15
clc;
//Given
T1=1/2;
T2=3/5;
T3=0;
T4=4/5;
p=500D-3; //W
//S matrix for magic Tee
x=1/sqrt(2);
s=[0 0 x x;0 0 x -x;x x 0 0;x -x 0 0];
//Using the input output relation
//[b]=[s]*[a]
b=[0.6565;0.7576;0.5536;0.0892];

//(i) Power transmitted through ports
//Port 1
p1=(1/2)*b(1,1)^2*(1-T1^2);
disp('W',p1,'Power at port 1:');

//Port2
p2=(1/2)*(b(2,1)^2)*(1-(T2^2));
disp('W',p2,'Power at port 2:');

//Port 4
p4=(1/2)*b(4,1)^2*(1-T4^2);
disp('W',p4,'Power at port 4:');

//(ii) Power reflected at port 3
//Port 3
p3=p*b(3,1)^2;
disp('W',p3,'Power at port 3:');

//(iii) Power absorbed
pabs=p-(p1+p2+p3+p4);
disp('W',pabs,'Power absorbed:');

//Answer for power absorbed is calculated wrong in book
