//Chapter1,Example1.27,Pg1.30
clc;
disp("Since the 5 ohms resistor is connected in parallel with 20V source,it becomes redundant")
I=20.00/6.00 //Converting 20V in series with 6 ohms to current source in parallel with 6 ohms
I=I+10
printf("\n Total current in circuit = %.2f A \n",I)
printf("Equivalent resistance = %.0f ohms \n",6)
