clear;
clc;

//page no. 491

Q = 0.00010;//cfs
t = 0.1;//ft
h = 3;//ft
d = 6;//in

K = Q*h/(t*0.25*%pi*(d/12)^2);

printf('K = %.5f fps',K);

//there is an error in the answer given in textbook
