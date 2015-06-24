//chapter20
//example20.2
//page437

V_NL=30 // V
regulation=1

// since regulation=((V_NL-V_FL)/V_FL)*100, we get V_FL as

V_FL=100*V_NL/(100+regulation)
printf("full load voltage = %.3f V \n",V_FL)
