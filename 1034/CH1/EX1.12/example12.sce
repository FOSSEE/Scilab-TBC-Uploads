clear;
clc;
printf("Example 1.12");
//[BIG "oh"]f(n)=O(g(n)). (big oh notation).
printf("\n \n 3n+2=O(n) as 3n+2<=4n for all n>=2.");
printf("\n \n 3n+3=O(n) as 3n+3<=4n for all n>=3.");............// O(n) is called linear.
printf("\n \n 3n+2=O(n) as 100n+6<=101n for all n>=10.");
printf("\n \n 10n^2+4n+2=O(n^2) as 10n^2+4n+2<=11n^2 for n>=5.");..........//O(n^2) is called quadratic.
printf("\n \n 1000n^2+100n-6=O(n^2) as 1000n^2+100n-6<=1001n^2 for n>=100.");
printf("\n \n 6*2^n+n^2<=7*2^n for n>=4");
printf("\n \n 3n+3=O(n^2) as 3n+3<=3n^2 for n>=2");
printf("\n \n 10n^2+4n+2=O(n^4) as 10n^2+4n+2<=10n^4 for n>=2.");
printf("\n \n 3n+2 is not O(1) as 3n+2 is less than or equal to c for any constant c and all n,n>=n0.");............// O(1) means computing time is constant.
printf("\n \n 10n^2+4n+2 is not O(n)");
