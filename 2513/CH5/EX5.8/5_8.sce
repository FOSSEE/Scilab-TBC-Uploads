clc
//initialisation of variables
s=105//gpcd
m=315//gpcd
m1=35//gpcd
Q1=360//gpcd
Q2=30//gpcd
p1=20//pecent
p2=15//persons/acer
D=21//persons/acre
I=2000//gpd/acre
//CALCULATIONS
A=D*(s+Q2)+I//gpd/acre
R=D*(m+Q2)+I//gpd/acre
L=D*(m1+Q2)+I//gpd/acre
//RESULTS
printf('the average peak and low rates of flow =% f gpd/acre',L)
