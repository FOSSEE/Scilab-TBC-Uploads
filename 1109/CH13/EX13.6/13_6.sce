clear;
clc;
Vs1=25;Is1=1;Is2=2; //values with output terminal short circuited
Vo1=10;Vo2=50;Io2=2; //values with input terminal open circuited
Vs2=0;
h11=Vs1/Is1;
printf("The h-parameters are:\n");
printf("-h11 = %f ohms\n",h11); //with output terminals short circuited
h21=Is2/Is1;
printf("-h21 = %f\n",h21); //with input terminals open circuited
h12=Vo1/Vo2;
printf("-h12 = %f\n",h12); //with input terminals open circuited
h22=Io2/Vo2;
printf("-h22 = %f mho",h22); //with output terminals short circuited
//the difference in result of h22 is due to erroneous value in textbook.
disp("The difference in result of h22 is due to erroneous value in textbook")
