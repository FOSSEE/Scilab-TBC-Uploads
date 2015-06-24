        //    PG (25)

//    Consider solving ax^2 + b*x + c = 


//    Consider a polynomial y = x^2 - 26*x + 1 = 0

x = poly(0,"x");
y = x^2 - 26*x + 1
p = roots(y)
ra1 = p(2,1)
ra2 = p(1,1)

//    Using the standard quadratic formula for finding roots,

rt1 = (-(-26)+sqrt((-26)^2 - 4*1*1))/(2*1)
rt2 = (-(-26)-sqrt((-26)^2 - 4*1*1))/(2*1)

//    Relative error

rel1 = (ra1-rt1)/ra1
rel2 = (ra2-rt2)/ra2

//    The significant errors have been lost in the subtraction ra2 = xa - ya.
//    The accuracy in ra2 is much less.
//    To calculate ra2 accurately, we use:

rt2 = ((13-sqrt(168))*(13+sqrt(168)))/(1*(13+sqrt(168)))
//    Now, rt2 is nearly equal to ra2. So, by exact calculations, we will now get a much better rel2.
