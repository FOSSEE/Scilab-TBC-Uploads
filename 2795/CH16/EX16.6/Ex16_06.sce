// Scilab Code Ex16.6: Page-598(2014)
clc; clear;
c = 1;    // Assume speed of light to be unity
clf();
v = [0:0.01:0.92]';
bita = v/c;        // Recession velocity ratio
for i = 1:1:93     
    red_shift(i) = sqrt((1+bita(i))/(1-bita(i)))-1;
end
plot(bita, red_shift);
title('The relation between Redshift and recession velocity', 'fontsize', 4, 'color','red', 'position', [0.02, 4.1]);
xlabel('Recession velocity (beta = v/c)', 'fontsize', 3, 'color', 'green');
ylabel('Redshift', 'fontsize', 3, 'color', 'green');

// Result
// The plot between Redshift vs recession velocity is as shown in the Fig.