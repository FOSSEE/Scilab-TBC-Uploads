clc
disp("Example 3.8")
printf("\n")
printf("Given")
disp("Total current is 30mA")
disp("Branch currents are 20mA and 10mA")
disp("Equivalent resistance is equal to or greater than 10 ohm")

//From Fig 3.6
//Current flowing through R1 be i1 and let it be equal to 10mA
//Current flowing through R2 be i2 and let it be equal to 20mA
i1=10*10^-3;i2=20*10^-3;
i=30*10^-3;

//Let R1/(R1+R2)=X1        (1)
//Let R2/(R1+R2)=X2        (2)
X1=i1/i;
X2=i2/i;
//Let R1*R2(R1+R2)=Y        (3)
//Given that 
printf("\n Given")
disp("R1*R2(R1+R2)>=10")
//Solving (1),(2) and (3) we get
printf("R1>=%dohm\nR2>=%dohm\n",15,30)
