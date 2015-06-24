//Initilization of variables
theta=[60;60;45] //degrees theta has been defined in the form of a matrix
d=[4.46;3.54;2] //feet defined as a matrix
F=400 //lb
//Calculations
//Taking moment about point A
Re=(F*(8-d(2,1)))/8 //lb
Ra=400-Re //lb here i have used the summation of forces in the vertical direction
//Taking moment about point B
Dv=(-F*3.644)/5.77 //lb
//Taking moment about point D
Bv=(F*2.126)/5.77 //lb
//Taking summation of forces in the vertical direction
Cv=-223-Dv //lb
//Taking moment about point D
Ch=(223*d(3,1)*cosd(theta(3,1))-Cv*5.173*cosd(theta(3,1)))/(5.173*sind(theta(3,1))) //lb
//Taking summation of forces in the horizontal direction
Dh=-Ch //lb
//Taking sum of forces in horizontal direction
Bh=-Dh //lb
//Result
clc
printf('The Floor reactions are \n')
printf('Ra=%f lb and Re=%f lb\n',Ra,Re)
printf('Pin reaction at C on CE are\n')
printf('Ch=%f lb and Cv=%f lb\n',Ch,Cv)
printf('The pin reactions at B on AC are\n')
printf('Bh=%f lb and Bv=%f lb',Bh,Bv) 
