clc
disp("Example 8.10")
printf("\n")

printf("Given")
disp("vs= 5V         t<0")
disp("vs=5*sin(w*t)  t>0")
vs=5;
R=5;L=10*10^-3;
//At t<0
//Inductor behaves as a short circuit
//Let i(0-)=i
i=vs/R;
printf("i(0-)=%dA\n",i)
//During the transition from t=0- to t=0+
//Let i(0+)=i1
i1=i
printf("i(0+)=%dA\n",i1)
//Applying KVL equation to the loop
disp("vs=i*R+v")
//Let v(0+)=v1 ; vs(0+)=vs1
//From given vs(0+)=0
vs1=0;
v1=vs1-i*R
printf("\nv(0+)=%dV\n",v1)
