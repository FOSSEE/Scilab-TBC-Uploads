clc
clear
//input
i=0.5 //current in circuit
R=6 //resistance of circuit
i1=0.3//dropped current
//calculation
r=1.2/0.2
e=i*(r+R)//ohms law
//output
printf("the battery emf is %3.3f V",e)
printf("\n the internal resistence is %3.3f ohm",r)
