            //Example 4.31
//Reading and writing a line of text

disp("Enter a line of text(upto 80 characters):  ");
line = read(%io(1), 1, 1, '(a)');
write(%io(2),line);