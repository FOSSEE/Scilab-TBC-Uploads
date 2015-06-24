//pagenumber 105 example 7
volbar=0.2;//barrier voltage for germanium volt
na=3*10^20;//atoms per metre
//(1) width of depletion layer at 10 and 0.1 volt

for q=[-10 -0.1 0.1]
    w=2.42*10^-6*sqrt((0.2-(q)));
    disp("width of depletion layer at "+string((q))+"   =   "+string((w))+"metre");//for -0.1volt correction in the book
end
//(d) capacitance
for q=[-10 -0.1]
    capaci=0.05*10^-9/sqrt(0.2-q);
    disp("capacitance at "+string((q))+"   =   "+string((capaci))+"farad");
end

