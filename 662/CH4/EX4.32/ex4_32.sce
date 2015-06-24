        //Example 4.32
        //Averaging student exam scores

//sample intractive program
printf("Please Enter your name: ");             // enter name
name=input("Enter your name: ", "string");

printf("Please enter the first score: ");      // enter 1st score
score1=scanf("%f");

printf("Please enter the second score: ");      // enter 2nd score
score2=scanf("%f");

printf("Please enter the third score: ");       // enter 3rd score
score3=scanf("%f");

avg=(score1+score2+score3)/3;                   // calculate average

printf("\n\nName: %-s\n\n", name);              // write output
printf("score 1: %-5.1f\n",score1);
printf("score 2: %-5.1f\n",score2);
printf("score 3: %-5.1f\n\n",score3);
printf("Average: %-5.1f\n\n",avg);
