                         //Example 1.5 
                         clc
                    //Calculate the area of circle

reply="yes"                                //for repeating calculation
while(reply=="yes")
    printf("Radius= ?");
    radius=scanf("%f");
    area=%pi *radius^2;
    printf("Area = %f", area);
    printf("\nDo you wish to repeat calculation(yes/no):");
    reply=convstr(scanf("%s"), 'l');      //converts whole string into lower alphabets
end
printf("\nGood bye");
