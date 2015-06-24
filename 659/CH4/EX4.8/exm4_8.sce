//             Example 4.8       
// The program illustrates the testing for correctness of reading data by scanf function 

//In Scilab mscanf function is similar to scanf function of c 
printf("Enter values of a,b and c");
[n,a,b,c]=mscanf("%d %f %c");
if(n==3) then          //Test condition
    printf("a = %d b = %f c = %c",a,b,c);
else
    printf("Error in input.");
end
