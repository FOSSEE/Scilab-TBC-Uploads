X = [5 7 6.2 8.1 7.9 15 18 3.9 4.6 5.8];
Y= [3 3.2 4.1 1.8 1.6 2.7 1.2 5.4 10.3 1.5];
t = sum(X)+sum(Y);
R =10;
a = 20;
b = 2;
estimate = (R+b)/(a+t);
disp(estimate, "Bayes estimate of lambda is");