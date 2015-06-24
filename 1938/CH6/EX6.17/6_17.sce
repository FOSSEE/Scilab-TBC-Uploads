clc,clear
printf('Example 6.17\n\n')
//Line PQ for Altermnator 1, and PR for alternaator 2.AB is at frequency x from P where total load is 30 MW
QT=25,PT=2,//PC=x
SR=25,PS=1.5

//using similarity of triangles PAC and PQT
AC_by_PC=(QT/PT)// because (AC/QT)=(PC/PT)
//using similarity of triangles PCB and PSR
CB_by_PC=(SR/PS)

AC_by_x=AC_by_PC   //which implies AC=12.5*x
CB_by_x=CB_by_PC  //which implies CB=16.67*x

AC_plus_CB=30  //total load at the frequency at P is 30 MW
x= AC_plus_CB/(AC_by_x + CB_by_x)
AC=12.5*x
CB=16.67*x  
frequency=50-x
printf('Loads shared by alternator 1 and 2 are %.2f MW and %.2f MW respectively',AC,CB)
