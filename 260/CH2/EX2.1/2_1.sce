//Eg-2.1
//pg-50

clear
clc
close()

H=[1 1/2 1/3;1/2 1/3 1/4;1/3 1/4 1/5];

//two significant figures
H_1=[1 .5 .33;.5 .33 .25;.33 .25 .2]
Hinv1=inv(H_1);

//four significant figures
H_2=[1 .5 .3333;.5 .3333 .25;.3333 .25 .2]
Hinv2=inv(H_2);

disp("inverse matrices")
disp(Hinv1)
disp(Hinv2)
