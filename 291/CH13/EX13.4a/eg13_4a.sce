defect = [6 5 3 0 1 2 1 0 2 1 1 3 2 0 1 1 0 2 1 2];
F = [0.12 0.10 0.06 0.00 0.02 0.04 0.02 0.00 0.04 0.02 0.02 0.06 0.04 0.00 .02 0.02 0.00 0.04 0.02 0.04];
total = 1000;
Fbar = sum(defect)/total;
n=50;
val = sqrt(Fbar*(1-Fbar)/n);
lcl = Fbar - (3*val);
ucl = Fbar + (3*val);
disp(lcl,"LCL is" );
disp(ucl, "UCL is");
for i= 1:20
    if( F(i)>ucl | F(i)<lcl)
        totald=sum(defect)-defect(i);
        //total = total -50;
     end   
end
//disp(totald);
total =  total - 50;
Fbar = totald/total;
val = sqrt(Fbar*(1-Fbar)/n);
//disp(Fbar);
disp("After recomputation");
lcl = Fbar - (3*val);
ucl = Fbar + (3*val);
disp(lcl,"LCL is" );
disp(ucl, "UCL is");