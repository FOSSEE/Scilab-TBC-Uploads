//               Example 4.6
//  Reading of strings using %wc and %ws.

//scanf() can only read one character at a time and return it to name1, therefore
//mscanf() is used that can read more than one character 
printf("Enter serial number and name one:");
[n,no,name1]=mscanf("%d %15c");
printf("%d %15s\n",no,name1);

//Read and display a string 
printf("Enter serial number and name two:");
[no,name2]=scanf("%d %s");
printf("%d %15s\n",no,name2);

//Read and display a string of width 15
printf("Enter serial number and name three:");
[no,name3]=scanf("%d %15s");
printf("%d %15s",no,name3);