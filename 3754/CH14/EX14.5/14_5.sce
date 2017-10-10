clear//

//Variables

alpha1 = 0.975                  //common base current gain
beta1 = 200.0                   //common emitter current gain

//Calculation

beta = alpha1 / (1-alpha1)      //common emitter current gain           
alpha = beta1 / (beta1 + 1)     //common base current gain 

//Result

printf("\n Value of beta when alpha = 0.975 is  %0.3f .\nValue of alpha when beta = 200 is  %0.3f .",beta,alpha)
