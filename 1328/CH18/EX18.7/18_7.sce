printf("\t example 18.7 \n");
t=20; // min
alpha=0.40; // ft^2/hr
delx=0.167; // ft
// From the conditions of Eq. (18.61) take time increments such that alpha(deltheta/delx^2)=1/2
printf("\t approximate values are mentioned in the book \n");
deltheta=(delx^2/(2*alpha));
printf("\t deltheta is : %.3f hr \n",deltheta);
N=(t/(deltheta*60));
printf("\t number of steps required : %.1f \n",N);
// end
