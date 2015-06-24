clc
disp("Example 6.8")
printf("Given")
disp("R1= 10kohm R2=50kohm Ri=500kohm R0=0")
disp("Open loop gain (A)=10^5")
A=10^5;R1=10*10^3;R2=50*10^3;Ri=500*10^3;
//From figure 6.11
//Applying KCL equation at node B
disp("(v1+vd)/10+ (v2+vd)/50+ vd/500=0          (1)")
//Since R0=0
disp("v2=A*vd")
//Solving for vd
disp("vd=10^-5*v2      (2)")
//Substituting (2) in (1) we get
printf("v2/v1=%d\n",-5)