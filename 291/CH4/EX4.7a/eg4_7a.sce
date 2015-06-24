probXequalsi = 1/6;
expecXsquared = 0;
for n=1:6
    expecXsquared = expecXsquared + (n*n*probXequalsi)
end

expecX= 3.5 // from eg 4.4a
var = expecXsquared - (expecX^2);
var10 = var*10;
disp(var10, "The variance is")