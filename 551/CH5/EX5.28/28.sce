clc
p1=7*10^5; //Pa
T1=733; //K
p2=1.012*10^5; //Pa
T2a=433; //K
y=1.4;
cp=1.005;

disp("(i) To prove that the process is irreversible")
T2=T1*(p2/p1)^((y-1)/y);
disp("T2 =")
disp(T2)
disp("But the actual temperature is 433K at th epressure of 1.012 bar, Hence the process is irreversible. Proved.")


disp("(ii) Change of entropy per kg of air")
ds=cp*log(T2a/T2);
disp("Increase of entropy=")
disp(ds)
disp("kJ/kg.K")