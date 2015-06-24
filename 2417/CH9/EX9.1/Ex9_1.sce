//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.1\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.1  (page no. 462) 
// Solution

Rc=7; //Compression Ratio Rc=v2/v3
k=1.4;  //It is apparent incerease in compression ratio yields an increased cycle efficiency
notto=(1-(1/Rc)^(k-1))*100; //Efficiency of an otto engine
printf("The efficiency of the otto cycle is %f percentage\n",notto);
//For the carnot cycle,
//Nc=1-(T2/T4) //efficiency for the carnot cycle //T2=lowest temperature //T4=Highest temperature

T2=70+460; //for converting to R //Conversion of unit
//At 700 F
T4=700+460; //temperatures converted to absolute temperatures;
nc=(1-(T2/T4))*100; //efficiency of the carnot cycle
printf("When peak temperature is 700 fahrenheit,efficiency of the carnot cycle is %f percentage\n",nc);        

//At 1000 F
T4=1000+460; //temperatures converted to absolute temperatures;
nc=(1-(T2/T4))*100; //efficiency of the carnot cycle
printf("When peak temperature is 1000 fahrenheit,efficiency of the carnot cycle is %f percentage\n",nc);

//At 3000 F
T4=3000+460; //temperatures converted to absolute temperatures;
nc=(1-(T2/T4))*100; //efficiency of the carnot cycle
printf("When peak temperature is 3000 fahrenheit,efficiency of the carnot cycle is %f percentage\n",nc);
