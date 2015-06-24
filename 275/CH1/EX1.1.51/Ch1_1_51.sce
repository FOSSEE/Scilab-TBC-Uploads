clc
disp("Example 1.51")
printf("\n")
disp("Find the maximum forward current and Draw power spectrum curve")
printf("Given\n")
T1=25
PT1=1000*10^-3    //maximum power dissipation at 25c
//Average current
IT1=500*10^-3      
IT2=IT1
VT2=0.8          //forward voltage drop
D=10^-2
PT2=VT2*IT2      
T2=((PT1-PT2)/D)+T1
//to caculate maximum forward current at 75c
T2!=75
PT2!=PT1-((T2!-T1)*D)
IT2=PT2!/VT2
//for(T>25), to draw graph
  vd=10^-2
  PT=(1000-(75*10))*10^-3  //maximum power dissipation at 100c
Temp=[0 25 100 125]        
p=[1000 1000 PT*10^3 0]
plot2d(Temp ,p)
xlabel("Temperature in c")
ylabel("Power in mW")
xtitle("Power-Temperature Curve")
printf("Maximum forward current at 75c=\n%f Ampere\n",IT2)
