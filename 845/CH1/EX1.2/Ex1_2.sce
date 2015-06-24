//Example 1.2
clc
clear

dec = 0.7625;
iter = 1;
while(1)
    dec = 2 * dec;
    p(iter) = int(dec);
    dec = dec - int(dec);
    if iter == 8 then
        break
    end
    iter = iter + 1;
end
a = strcat(string(p));
bin = strcat(['0.',a])
disp(bin)
