defects= 0.01;
disks = 10;
package = 3;
probdefect0 = ((1-defects)^10);
probdefect1 = factorial(disks)*defects*((1-defects)^9)/factorial(disks-1);
prob = 1 - probdefect0 -probdefect1;
disp(prob, "Probability that a package will be returned is")
newprob = factorial(package)*prob*((1-prob)^2)/factorial(package-1);
disp(newprob, "Probability that exactly one of the packages will be returned among 3 is" )

//the solution in the textbook is approximate