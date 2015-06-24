//              Example 6.7
//The program illustrate the use of continue statement

disp("Enter 9999 to STOP");
count=0;
negative=0;
while(count<=100)
    number=input("Enter a number:");
    if(number==9999) then
        break;         //EXIT FROM THE LOOP
    end
    if(number<0),
        disp("Number is negative");
        negative =negative+1;
        continue;     //SKIP REST OF LOOP
     end
     sqrot=sqrt(number);  //COMPUTE SQUARE ROOT
     printf("Number = %f\n",number);
     printf("Square root = %f",sqrot);
     count=count+1;
end
//PRINT RESULTS
printf("Number of items done = %d\n",count);
printf("Negative items = %d\n",negative);
disp("END OF DATA");