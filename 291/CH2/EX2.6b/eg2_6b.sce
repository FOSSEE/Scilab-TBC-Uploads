year = [12 16 13 18 19 12 18 19 12 14];
pulserate = [73 67 74 63 73 84 60 62 76 71];
year_new = year- mean(year);
pulserate_new = pulserate - mean(pulserate);
num=0
s1 =0;
s2=0;
for i=1:10
    num = num + (year_new(i)*pulserate_new(i));
    s1 = s1 + (year_new(i)*year_new(i));
    s2 = s2 + (pulserate_new(i)*pulserate_new(i));
end
coefficient = num/sqrt(s1*s2);
disp(coefficient)