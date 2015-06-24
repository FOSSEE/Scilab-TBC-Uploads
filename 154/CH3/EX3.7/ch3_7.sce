clc
disp("Example 3.7")
printf("\n")
printf("Given")
disp("Total resistance of three resistors is 50 ohm")
R=50;
disp("Output voltage is 10 percent of the input voltage")
//Let v be input voltage and v1 be output voltage
//Let v1/v=V
V=0.1;
//As V=R1/(Total resistance)
//Solving for R1
R1=V*R;
//As R=R1+R2
//Solving for R2
R2=R-R1;
printf("R1=%dohm\n R2=%dohm\n",R1,R2)


