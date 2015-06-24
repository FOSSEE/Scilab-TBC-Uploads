//Problem 14.05:

//initializing the variables:
P = 0.5; // in atm
e = 0.3;

//calculation:
//From Equation (14.27)
//K = Ky*P^v
//y1 = (3-e)/(5-2e) \n y2 = (1-3e)/(5-2e) \n y3 = e/(5-2e) \n y4 = (1+e)/(5-2e)
v = 1+1-3-1


printf("\n\nResult\n\n")
printf("\n K = [(e/(5-2e))^1*(1+e)/(5-2e))^1/((3-e)/(5-2e))^3*((1-3e)/(5-2e))^1]*P^(%.0f)",v)
