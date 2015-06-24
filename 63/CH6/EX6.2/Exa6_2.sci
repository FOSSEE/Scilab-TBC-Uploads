//Determine (a) Loaded Q which an RF amplifier for this receiver would have to have (b) new intermediate frequency that would be needed (if there is to be no RF amplifier)

//Page 127

alpha_a = 138.6;
alpha_b = 7.22;
rho_b = 0.0715
fa = 25;

alpha = alpha_a/alpha_b;
q = sqrt((alpha^2 - 1))/rho_b;
f1 = ((1.91*fa) - fa)/2;

disp(q, 'Loaded Q which an RF amplifier ')
disp(q/2 , 'Geometric Mean of Loaded Q which an RF amplifier ')

disp(f1, 'new intermediate frequency that would be needed (in MHz)')
