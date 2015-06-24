child0 = 0.15;
child1 = 0.2;
child2 = 0.35;
child3 = 0.30;
pboy = 0.5;
pgirl = 0.5;

disp(child0 , "Probability that B=0 and G=0")
disp(child1*pgirl , "Probability that B=0 and G=1")
disp(child2*pgirl*pgirl , "Probability that B=0 and G=2")
disp(child3*pgirl*pgirl*pgirl , "Probability that B=0 and G=3")
disp(child1*pboy , "Probability that B=1 and G=0")
disp(child2*pgirl*pboy , "Probability that B=1 and G=1")
disp(child3*pgirl*pgirl*pboy , "Probability that B=1 and G=2")
disp(child2*pboy*pboy , "Probability that B=2 and G=0")
disp(child3*pgirl*pboy*pboy , "Probability that B=2 and G=1")
disp(child3*pboy*pboy*pboy , "Probability that B=3 and G=0")
