

//exapple 11.7 
clc; funcprot(0);
// Initialization of Variable
e=0.4;//incipent to fluidisation
//calculation
//part 1
disp("for Re<500");
disp("the ratio of terminal velocity & minimmum fluidising velocity is");
a=3.1*1.75/e^3;
disp(sqrt(a));
//part 2
disp("for Re>500");
disp("the ratio of terminal velocity & minimmum fluidising velocity is");
a=150*(1-e)/18/e^3;
disp(a);
