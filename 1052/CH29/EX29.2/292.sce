clc;
//Example 29.2
//page no 455
printf("Example 29.2 page no 455\n\n");
//the probability distribution of the number of defectives in a sample of five pump drawn with replacement from lot of 1000 pump
//the probability distribution of x, thenumber of sucess in n performances of th erandom experiment is the probability distribution function 
//P(x) = (factorial(n)/factorial(x)*(factorial n -factorial x))*(p^x*q^n-x)
n=5//no. of performances
x=3//no. of successes 
p=0.05//probability of sucesses when the sample of pump is drawn with replacement
q=1-p//probability of faliure
P=factorial(n)*((p^x)*(q^(n-x)))/(factorial(x)*(factorial(n)-factorial(x)))//probability when x=3//probability when x=3/factorial(x)*(factorial(n)-factorial(x))*(p^x*q^(n-x))//probability when x=3
printf("\n probability P=%f  ",P); //calculation error in book

