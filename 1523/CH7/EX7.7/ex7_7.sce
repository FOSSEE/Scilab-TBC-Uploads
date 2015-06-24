// Graph Theory : example 7.7 : (pg 7.18 & 7.19)
//Complete incidence matrix Aa
printf("\nAa=");
disp(Aa=[1 0 0 -1 1 0 0 0;-1 1 0 0 0 1 0 0;0 -1 1 0 0 0 1 0;0 0 -1 1 0 0 0 1;0 0 0 0 -1 -1 -1 -1]);
//eliminating last row from Aa
printf("\nA=");
disp(A=[1 0 0 -1 1 0 0 0;-1 1 0 0 0 1 0 0;0 -1 1 0 0 0 1 0;0 0 -1 1 0 0 0 1]);
//Tieset matrix B
printf("\ntwigs={1,3,5,7} \nlinks={2,4,6,8} \ntieset 2={2,7,5,1} \ntieset 4={4,5,7,3} \ntieset 6={6,5,1} \ntieset 8={8,7,3}");
// forward direction = 1, reverse direction = -1
printf("\nB=");
disp(B=[1 1 0 0 -1 0 1 1;0 0 1 1 1 0 -1 0;1 0 0 0 -1 1 0 0;0 0 1 0 0 0 -1 1]);
// f-cutset matrix Q
printf("\nf-cutset 1={1,6,2} \nf-cutset 3={3,4,8} \nf-cutset 5={5,4,6,2} \nf-cutset 7={7,2,8,4}");
printf("\nQ=");
disp(Q=[1 -1 0 0 0 -1 0 0;0 0 1 -1 0 0 0 -1;0 1 0 -1 1 1 0 0;0 -1 0 1 0 0 1 1]);