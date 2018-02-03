clear
//
//

//Initilization of Variables

sigma=150 //N/mm**2 //Stress
P=40*10**3 //N //Load

//Calculations

//LEt P_A.P_B,P_C,P_D be the forces developed in wires A,B,C,D respectively

//Let sum of all Vertical Forces=0
//P_A+P_B+P_C+P_D=40   ..........................(1)

//Let x be the distance between each wires
//sum of all moments=0
//P_B*x+P_C*2*x+P_D*3*x=40*2*x

//After further simplifying we get
//P_B+2*P_C+3*P_D=80     ..........................(2)

//As the equations of statics ae not enough to find unknowns,Consider compatibilit Equations

//Let dell_l be the increse in elongation of wire

//dell_l_B=dell_l_A+dell_l
//dell_l_C=dell_l_A+2*dell_l
//dell_l_D=dell_l_A+3*dell_l

//Let P1 be the force required for the Elongation of wires,then
//P_B=P_A+P1    ]
//P_C=P_A+2*P1  ]
//P_D=P_A+3*P1  ]     ................................(3)  

//from Equation (3) and (1) we get
//2*P_A+3*P1=20      ................................(4)

//from Equation (3) and (2) we get
//6*P_A+14*P1=80 

//subtracting 3 times equation (4) from (3) we get
P1=20*5**-1

//from Equation 4 we get
P_A=(80-14*P1)*6**-1
P_B=P_A+P1
P_C=P_A+2*P1    
P_D=P_A+3*P1

//Let d be the diameter required,then
d=(P_D*10**3*4*(%pi*150)**-1)**0.5

//result
printf("\n The Required Diameter is %0.2f  mm",d)
