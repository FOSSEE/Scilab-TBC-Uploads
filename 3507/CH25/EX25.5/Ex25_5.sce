//chapter25
//example25.5
//page545

R1=20d3 // ohm
R2=20d3 // ohm
R3=30d3 // ohm
R4=30d3 // ohm
V=100 // V
Rm=60d3 // ohm

// case 1 : meter is not connected
R=R1+R2+R3+R4
I=V/R
V_A=V
V_B=V-I*R2
V_C=V-I*(R1+R2)
V_D=V-I*(R1+R2+R3)

// case2 : meter is connected
    // At A
    V_A1=V
    
    // At B
    R_total_B=R1+(Rm*(R2+R3+R4)/(Rm+R2+R3+R4))
    I1=V/R_total_B
    V_B1=I1*(Rm*(R2+R3+R4)/(Rm+R2+R3+R4))
    
    // At C
    R_total_C=R1+R2+(Rm*(R3+R4)/(Rm+R3+R4))
    I2=V/R_total_C
    V_C1=V*(Rm*(R3+R4)/(Rm+R3+R4))/R_total_C
    
    // At D
    R_total_D=R1+R2+R3+(Rm*R4/(Rm+R4))
    I2=V/R_total_D
    V_D1=V*(Rm*R4/(Rm+R4))/R_total_D
    
printf("CASE 1 : meter is not connected \n     Voltage at A = %.3f V \n     Volatge at B = %.3f V \n     Volatge at C = %.3f V \n     Volatge at D = %.3f V \n",V_A,V_B,V_C,V_D)
printf("CASE 2 : meter is connected \n      At A then voltage at A = %.3f V",V_A1)
printf("\n      At B then voltage at B = %.3f V",V_B1)
printf("\n      At C then voltage at C = %.3f V",V_C1)
printf("\n      At D then voltage at D = %.3f V \n \n",V_D1)
    
printf("resistance of voltmeter should be 100 times the resistance across \nwhich voltage is to be measured.Since this condition is not \nsatisfied here, readings are wrong. \n")    
