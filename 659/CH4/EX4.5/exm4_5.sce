//             Example 4.5       
//Reading of real numbers(in both decimal point and exponential notation 

printf("Values of x and y:");
[x,y]=scanf("%f %e"); //reading x [decimal point] and y[exponential] from standard input 
printf("\n");
printf("x = %f\ny = %f\n",x,y);
printf("Values of p and q:");
[p,q]=scanf("%lg %lg");
printf("\np = %.12f\nq = %.12e\n",p,q);
