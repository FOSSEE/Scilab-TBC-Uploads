clc
//to calculate optical rotation
//let theta' be the optical rotation by a solution of strength c' in a tube of length l' then
//we get 10*theta'/l'*c'=10*theta/l*c
c=1/3 //it is given that solution is 1/3 of its previous concentration i.e. c'/c=1/3,where c=c'/c
l1=30  //where l1=l'
           //length in cm 
l=20
theta=13 //degree
//formula is theta'=l'*c'*theta/(l*c)
theta1=l1*c*theta/l
disp("optical rotation is theta1="+string(theta1)+"degree")
