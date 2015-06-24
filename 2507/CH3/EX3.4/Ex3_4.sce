clc
clear
printf("Example 3.4 | Page number 77 \n\n");
//Part(a) Determine what A reads when B reads 30
printf("Part (a)\n");
//t_A and t_B are readings two Celsius thermometers A and B
//t_A = p + q*t_B + r*(t_B)^2
//p, q and are are constants.
X = [1, 0, 0; 1, 100, 100^2; 1, 50, 50^2]\[0; 100; 51]
p = X(1);
q = X(2);
r = X(3);

deff('y = t_A(t_B)',['y = q*t_B + r*(t_B^2)'])
t_B = 30;

printf("When thermometer B reads %0.1f°C then thermometer A reads, t_B = %.02f°C\n",t_B,t_A(t_B));
//Part(b)
printf("\nPart (b)\n");
printf("This part is theoritical quesition, book shall be referred for solution."); 
