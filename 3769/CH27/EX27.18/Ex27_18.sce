clear
//Given 
Vbb=2.0                            //v
Rc=2000                           //ohm
B=100
Vbe=0.6                            //V

//Calculation
Ic=Vbb/Rc*10**3
Ib=Ic/B
Ib1=10*Ib
Rb=(Vbb-Vbe)/Ib
Ic=B*Ib1

//Result 
printf("\n d.c. collector current is %0.3f  mA",Ic)
