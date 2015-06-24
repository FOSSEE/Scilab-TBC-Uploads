temp = [24.2 22.7 30.5 28.6 25.5 32.0 28.6 26.5 25.3 26.0 24.4 24.8 20.6 25.1 21.4 23.7 23.9 25.2 27.4 28.3 28.8 26.6];
defects = [25 31 36 33 19 24 27 25 16 14 22 23 20 25 25 23 27 30 33 32 35 24];
temp_new = temp- mean(temp);
defects_new = defects - mean(defects);
num=0
s1 =0;
s2=0;
for i=1:22
    num = num + (temp_new(i)*defects_new(i));
    s1 = s1 + (temp_new(i)*temp_new(i));
    s2 = s2 + (defects_new(i)*defects_new(i));
end
coefficient = num/sqrt(s1*s2);
disp(coefficient)