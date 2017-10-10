clc;
P=20000; // rated VA of transformer
E1=2300; // rated voltage of primary
E2=230; // rated voltage of secondary
pf=0.6; // power factor
n=0.96; // efficiency
ih=P/E1; // rated current of h v winding
il=P/E2; // rated current of l v winding
// As per the connections given in fig 14.1(a), two voltages are in series aiding
Et=E1+E2; // output voltage of autotransformer
disp('case a');
// By Kirchoffs law at point b , supply current is given by
I=il+ih;
Pa1=Et*il; // VA rating of autotransformer
Po1=(Pa1/1000); // power output at full load unity power factor
Pt1=(E2*il)/1000; // power transformed
Pc1=(Po1-Pt1); // power conducted
printf('For the given connection, output power is %f kW\n',Po1); 
printf('For the given connection, transformed power is %f kW\n',Pt1); 
printf('For the given connection, conducted power is %f kW\n',Pc1); 
disp('case b');
// As per the connections given in fig 14.1(b), two voltages are in series opposition
Et=E1-E2; // output voltage of autotransformer
// By Kirchoffs law at point b , supply current is given by
I=il-ih;
Pa2=E1*I; // VA rating of autotransformer
Po2=Pa2/1000; // power output at full load unity power factor
Pt2=(E2*il)/1000; // power transformed
Pc2=(Po2-Pt2); // power conducted
printf('For the given connection, output power is %f kW\n',Po2); 
printf('For the given connection, transformed power is %f kW\n',Pt2); 
printf('For the given connection, conducted power is %f kW\n',Pc2); 
pl=((1/n)-1)*P*pf; // losses in 2-winding transformer
// autotransformer operates at rated current and rated voltage so efficiency and losses remain constant
disp('Efficiency for case a');
n1=(1-(pl/(Po1*1000*pf+pl)))*100; 
printf('Efficiency of autotransformer for %f VA is %f percent\n',Po1,n1);
disp('Efficiency for case b');
n2=(1-(pl/(Po2*1000*pf+pl)))*100; 
printf('Efficiency of autotransformer for %f VA is %f percent',Po2,n2);
