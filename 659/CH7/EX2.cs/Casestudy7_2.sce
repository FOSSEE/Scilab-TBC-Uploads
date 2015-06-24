//             Case Study: Chapter-7
//       2.Calculation of standard deviation

MAXSIZE=100;
sum1=0;n=0;sumsqr=0;
disp("Input values:input -1 to end");
for i=1:MAXSIZE
    value(i)=scanf("%f");  //Entering values in the array named value
    if(value(i)==-1)
        break;
    end
    sum1=sum1+value(i);
    n=n+1;
end
mean1=sum1/n;             //Computes mean
for i=1:n
    deviation=value(i)-mean1;
    sumsqr=sumsqr+deviation^2;
end
variance1=sumsqr/n;
stddeviation=sqrt(variance1);      //Computes standard deviation
//Printing items,Mean and Standard deviation
printf("Number of items: %d\n",n);
printf("Mean: %f\n",mean1);
printf("Standard deviation: %f\n",stddeviation);