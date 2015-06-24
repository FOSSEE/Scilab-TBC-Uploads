probXequalsi = 1/6;
expecXsquared = 0;
for n=1:6
    expecXsquared = expecXsquared + (n*n*probXequalsi)
end

expecX= 3.5 // from eg 4.4a
var = expecXsquared - (expecX^2);
disp(var, "The variance is")
