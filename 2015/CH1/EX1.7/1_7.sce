clc
//initialisation of variables
t1=295 //temparature in k
r=5.25
g=1.4
t3=923 //temparature in k
tc=511 //temparature in k
tt=633 //temparature in k
//CALCULATIONS
t2=t1*(r)^((g-1)/g)
t4=t3/(r)^((g-1)/g)
effb=1-((t4-t1)/(t3-t2))
wt=t3-t4
wc=t2-t1
wr1=(1-(t2-t1)/(t3-t4))
ctwr1=(t2-t1)/(t3-t4)
effc=(t2-t1)/(tc-t1)
efft=(t3-tt)/(t3-t4)
effbr=1-((tt-t1)/(t3-tc))
wr2=1-((tc-t1)/(t3-tt))
ctwr2=(tc-t1)/(t3-tt)
//RESULTS
printf('work ratio and compressed turbine wrok ratio in first part of problem are %2f and %2f',wr1,ctwr1)
printf('\nwork ratio and compressed turbine wrok ratio in second part of problem are %2f and %2f',wr2,ctwr2)
