clc,clear
printf('Example 6.7\n\n')

//Line PQ for Altermnator 1, and PR for alternaator 2.AB is at frequency x from P where total load is 3000 kW
QC=2000,PS=2.5,//PC=x
TR=2000,PT=2

//using similarity of triangles PAC and PQS
AC_by_PC=(QC/PS)// because (AC/QC)=(PC/PS)
//using similarity of triangles PCB and PTR
CB_by_PC=(TR/PT) // because (CB/TR)=(PC/PT)

AC_by_x=AC_by_PC   //which implies AC=12.5*x
CB_by_x=CB_by_PC  //which implies CB=16.67*x

AC_plus_CB=3000  //total load at the frequency at P is 30 kW
x= AC_plus_CB/(AC_by_x + CB_by_x)
AC=AC_by_x * x
CB=CB_by_x * x  
frequency=50-x
printf('Loads shared by alternator 1 and 2 are %.2f kW and %.2f kW respectively',AC,CB)

//construction for max load: RT is extended to cut PQ at X.
QS=2000,RT=2000 //see figure
XT=QS*(PT/PS)
RX=RT+XT  //maximum load

printf('\nMaximum load is %.0f kW',RX)
