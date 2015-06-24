clc
//initialisation of variables
y=19.5//in
x=396.8//in
n=6//in
y1=2.20//in
x1=51.14//in
p=5.64//in
//CALCULATIONS
Beta=(x-n*(y)*(y1))/(x1-n*(y1)^2)
X=p+Beta//minimum
//RESULTS
printf('the method of leate squares =% f minimum',X)
