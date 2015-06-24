

//exapple 1.17 
clc; funcprot(0);
// Initialization of Variable
time=10*3600+30*60;
GMN=-14*60-10;
changeET=1*1.5;
neterr=GMN+changeET;
GAT=time+neterr;
hr=round(GAT/3600);
b=GAT-hr*3600;
mi=round(b/60-1);
c=GAT-hr*3600-mi*60;
disp("GAT is" );
disp(hr,"hours");
disp(mi,"minutes");
disp(c,"seconds");
