intx= integrate('%e^(-x)', 'x',0, 1 );
inty=integrate('2*%e^(-2*y)', 'y', 0, 1);
answer = (1-intx)*inty;
disp(answer , "Probability that X>1 and Y<1 is")

//For other two parts, symbolic manipulations are required